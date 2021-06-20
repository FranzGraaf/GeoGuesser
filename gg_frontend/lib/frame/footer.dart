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
import 'package:gg_frontend/pages/settings.dart';
import 'package:gg_frontend/pages/splash_screen.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  double _main_font_size = 14;
  bool visible = false;

  void get_setup() {
    switch (global_active_route) {
      case Main.route:
        visible = false;
        return;
      case Splash_screen.route:
        visible = false;
        return;
      case Homepage.route:
        visible = true;
        return;
      case Settings.route:
        visible = true;
        return;
      case Profile.route:
        visible = true;
        return;
      case Login.route:
        visible = true;
        return;
      case Register.route:
        visible = true;
        return;
      case Game.route:
        visible = true;
        return;
      case Result.route:
        visible = true;
        return;
      default:
        visible = true;
        return;
    }
  }

  @override
  void initState() {
    get_setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return visible
        ? Container(
            alignment: Alignment.center,
            height: 20,
            width: _screen_size.width,
            decoration: BoxDecoration(
              color: global_color_1.withOpacity(1),
              /*border: Border(top: BorderSide(color: Colors.black, width: 1.0))*/
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ButtonTheme(
                minWidth: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(About_Us.route);
                        },
                        child: Text(
                          global_language == Global_Language.ger
                              ? "über uns"
                              : "About us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: _on_mobile
                                  ? _main_font_size * 0.75
                                  : _main_font_size),
                        )),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.white,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Datenschutz.route);
                        },
                        child: Text(
                          global_language == Global_Language.ger
                              ? "Datenschutz"
                              : "Privacy policy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: _on_mobile
                                  ? _main_font_size * 0.75
                                  : _main_font_size),
                        )),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.white,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Impressum.route);
                        },
                        child: Text(
                          global_language == Global_Language.ger
                              ? "Impressum"
                              : "Legal notice",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: _on_mobile
                                  ? _main_font_size * 0.75
                                  : _main_font_size),
                        )),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}
