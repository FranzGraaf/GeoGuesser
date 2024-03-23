import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_1.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';
import 'package:gg_frontend/pages/game_settings.dart';
import 'package:gg_frontend/popups/info_popup.dart';

class Homepage extends StatefulWidget {
  static const String route = '/homepage';
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _open_info_popup() {
    showDialog(
        context: context,
        builder: (_) {
          return Info_Popup();
        });
  }

  void initialise() async {
    global_total_players = await Backend_Com().get_total_players();
    if (global_usertype == Usertype.user) {
      global_userdata.ranking =
          await Backend_Com().get_ranking(global_userdata.points!);
    }
    setState(() {});
  }

  @override
  void initState() {
    global_language_streamController.stream.listen((data) {
      setState(() {});
    });
    global_rebuild_controller.stream.listen((data) {
      setState(() {});
    });
    initialise();
    super.initState();
  }

  @override
  void dispose() {
    global_language_streamController.close();
    global_language_streamController = StreamController.broadcast();
    global_rebuild_controller.close();
    global_rebuild_controller = StreamController.broadcast();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                global_usertype == Usertype.visitor
                    ? Navigator.of(context).pushNamed(Login.route)
                    : Navigator.of(context).pushNamed(Profile.route);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  global_usertype == Usertype.user
                      ? Text(global_userdata.nickname ?? "-")
                      : Text(global_language == Global_Language.eng
                          ? "login / register"
                          : "login / registrieren"),
                  SizedBox(
                    width: 10,
                  ),
                  global_usertype == Usertype.user
                      ? ClipOval(
                          child: Image.network(
                            global_userdata.image_url ??
                                global_default_user_image,
                            width: 50,
                            height: 50,
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        global_usertype == Usertype.user
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      logout();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(global_language == Global_Language.eng
                            ? "logout"
                            : "logout")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              )
            : Container(),
        Expanded(
          child: SizedBox(),
        ),
        Text(
          global_language == Global_Language.eng
              ? "World Ranking"
              : "Weltrangliste",
          style: TextStyle(
              color: global_color_1,
              fontSize: 40,
              fontWeight: FontWeight.normal),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text((global_userdata.ranking ?? "-").toString(),
                style: TextStyle(
                    color: global_color_1,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            Text(" / " + (global_total_players ?? "-").toString(),
                style: TextStyle(
                    color: global_color_1,
                    fontSize: 25,
                    fontWeight: FontWeight.normal))
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Own_Button_1(
          text: global_language == Global_Language.eng ? "Play" : "Play",
          onPressed: () {
            Navigator.of(context).pushNamed(Game.route);
          },
        ),
        SizedBox(
          height: 15,
        ),
        Own_Button_1(
          width: 240,
          height: 80,
          text: global_language == Global_Language.eng ? "Profile" : "Profil",
          onPressed: () {
            Navigator.of(context).pushNamed(Profile.route);
          },
          fontSize: 40,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Game_Settings.route);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  ClipOval(
                    child: Image.asset(
                      "assets/images/settings.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(global_language == Global_Language.eng
                      ? "Settings"
                      : "Einstellungen"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            TextButton(
              onPressed: () {
                _open_info_popup();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(global_language == Global_Language.eng
                      ? "How to play"
                      : "Spielregeln"),
                  SizedBox(
                    width: 0,
                  ),
                  Icon(
                    Icons.info,
                    color: global_color_1,
                    size: 42,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
