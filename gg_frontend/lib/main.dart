import 'package:flutter/material.dart';
import 'package:gg_frontend/frame/cookie_banner.dart';
import 'package:gg_frontend/frame/footer.dart';
import 'package:gg_frontend/frame/frame_pages/about_us.dart';
import 'package:gg_frontend/frame/frame_pages/datenschutz.dart';
import 'package:gg_frontend/frame/frame_pages/impressum.dart';
import 'package:gg_frontend/frame/header.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/homepage.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';
import 'package:gg_frontend/pages/register.dart';
import 'package:gg_frontend/pages/result.dart';
import 'package:gg_frontend/pages/settings.dart';
import 'package:gg_frontend/pages/splash_screen.dart';
import 'package:gg_frontend/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoGuesser',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Homepage.route, //Splash_screen.route,
      onGenerateRoute: generateRoute,
    );
  }
}

class Main extends StatefulWidget {
  static const String route = '/';
  var arguments;
  Main({this.arguments});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Background(),
          Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  SizedBox(
                      width: _screen_size.width,
                      child: get_main_widget(widget.arguments)),
                  Header(),
                ],
              )),
              Footer()
            ],
          ),
          Align(
            child: Cookie_Banner(),
            alignment: Alignment.topCenter,
          )
        ],
      ),
    );
  }
}

Widget get_main_widget(var arguments) {
  switch (global_active_route) {
    case Main.route:
      return Container();
    case Splash_screen.route:
      return Splash_screen();
    case Homepage.route:
      return Homepage();
    case Settings.route:
      return Settings();
    case Profile.route:
      return Profile();
    case Login.route:
      return Login();
    case Register.route:
      return Register();
    case Game.route:
      return Game();
    case Result.route:
      return Result(
        arguments: arguments,
      );
    case About_Us.route:
      return About_Us();
    case Datenschutz.route:
      return Datenschutz();
    case Impressum.route:
      return Impressum();
    default:
      return Homepage();
  }
}

class Background extends StatefulWidget {
  const Background({Key key}) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    return Container(
      width: _screen_size.width,
      height: _screen_size.height,
      color: global_color_1.withOpacity(0.15),
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          "assets/images/gg_background.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
