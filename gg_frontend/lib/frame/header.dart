import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/main.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/homepage.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';
import 'package:gg_frontend/pages/register.dart';
import 'package:gg_frontend/pages/result.dart';
import 'package:gg_frontend/pages/settings.dart';
import 'package:gg_frontend/pages/splash_screen.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool visible = false;
  String text = "";

  void get_setup() {
    switch (global_active_route) {
      case Main.route:
        visible = false;
        text = "";
        return;
      case Splash_screen.route:
        visible = false;
        text = "";
        return;
      case Homepage.route:
        visible = false;
        text = "";
        return;
      case Settings.route:
        visible = true;
        text = "Settings";
        return;
      case Profile.route:
        visible = true;
        text = "Profile";
        return;
      case Login.route:
        visible = true;
        text = "Login";
        return;
      case Register.route:
        visible = true;
        text = "Register";
        return;
      case Game.route:
        visible = false;
        text = "";
        return;
      case Result.route:
        visible = true;
        text = "Game Results";
        return;
      default:
        visible = false;
        text = "";
        return;
    }
  }

  @override
  void initState() {
    get_setup();
    /*global_rebuild_controller.stream.listen((data) {
      setState(() {});
    });*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return visible
        ? Material(
            color: Colors.transparent,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 225,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Text(
                      text,
                      style: TextStyle(
                          color: global_color_1,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          )
        : Container();
  }
}
