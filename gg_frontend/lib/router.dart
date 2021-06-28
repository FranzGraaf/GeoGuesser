import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/main.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  //return _default_PageRoute(settings);
  switch (settings.name) {
    case Profile.route:
      if (global_usertype == Usertype.user) {
        return _default_PageRoute(
            RouteSettings(name: Profile.route, arguments: settings.arguments));
      }
      return _default_PageRoute(
          RouteSettings(name: Login.route, arguments: settings.arguments));
    default:
      return _default_PageRoute(settings);
  }
}

PageRoute _default_PageRoute(RouteSettings settings) {
  return PageRouteBuilder(
      pageBuilder: (_, a1, a2) {
        global_active_route = settings.name;
        return Main(
          arguments: settings.arguments,
        );
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = 0.0; //Offset(0.0, 1.0);
        var end = 1.0; //Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      },
      settings: RouteSettings(name: settings.name));
}
