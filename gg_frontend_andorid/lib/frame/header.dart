import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gg_frontend/frame/frame_pages/about_us.dart';
import 'package:gg_frontend/frame/frame_pages/datenschutz.dart';
import 'package:gg_frontend/frame/frame_pages/impressum.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/main.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/homepage.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';
import 'package:gg_frontend/pages/register.dart';
import 'package:gg_frontend/pages/result.dart';
import 'package:gg_frontend/pages/game_settings.dart';
import 'package:gg_frontend/pages/splash_screen.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool visible = false;
  bool home_visible = false;
  String text = "";

  void get_setup() {
    switch (global_active_route) {
      case Main.route:
        visible = false;
        home_visible = false;
        text = global_language == Global_Language.eng ? "" : "";
        return;
      case Splash_screen.route:
        visible = false;
        home_visible = false;
        text = global_language == Global_Language.eng ? "" : "";
        return;
      case Homepage.route:
        visible = false;
        home_visible = false;
        text = global_language == Global_Language.eng ? "" : "";
        return;
      case Game_Settings.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng
            ? "Settings"
            : "Einstellungen";
        return;
      case Profile.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng ? "Profile" : "Profil";
        return;
      case Login.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng ? "Login" : "Login";
        return;
      case Register.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng
            ? "Register"
            : "Registrieren";
        return;
      case Game.route:
        visible = false;
        home_visible = false;
        text = global_language == Global_Language.eng ? "" : "";
        return;
      case Result.route:
        visible = true;
        home_visible = false;
        text = global_language == Global_Language.eng
            ? "Game Results"
            : "Ergebnis";
        return;
      case About_Us.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng ? "About us" : "Über uns";
        return;
      case Datenschutz.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng
            ? "Privacy policy"
            : "Datenschutz";
        return;
      case Impressum.route:
        visible = true;
        home_visible = true;
        text = global_language == Global_Language.eng
            ? "Legal notice"
            : "Impressum";
        return;
      default:
        visible = false;
        home_visible = false;
        text = global_language == Global_Language.eng ? "" : "";
        return;
    }
  }

  @override
  void initState() {
    get_setup();
    global_language_streamController.stream.listen((data) {
      get_setup();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    global_language_streamController.close();
    global_language_streamController = StreamController.broadcast();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return visible
        ? Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 60,
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Homepage.route);
                      },
                      icon: Icon(
                        Icons.home,
                        color: global_color_1,
                      )),
                  Row(
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
                ],
              ),
            ),
          )
        : Container();
  }
}
