import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_page_language_switch.dart';
import 'package:gg_frontend/pages/homepage.dart';
import 'package:gg_frontend/popups/sure_popup.dart';

class Game_Settings extends StatefulWidget {
  static const String route = '/settings';
  const Game_Settings({Key key}) : super(key: key);

  @override
  _Game_SettingsState createState() => _Game_SettingsState();
}

class _Game_SettingsState extends State<Game_Settings> {
  void _open_sure_popup() {
    showDialog(
        context: context,
        builder: (_) {
          return Sure_Popup();
        }).then((value) async {
      if (value ?? false) {
        if ((await Backend_Com().delete_user()) == "ok") {
          logout();
          Navigator.of(context).pushReplacementNamed(
            Homepage.route,
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(milliseconds: 1000),
              content: Text(
                global_language == Global_Language.eng
                    ? "something went wrong"
                    : "etwas ist schief gelaufen",
                textAlign: TextAlign.center,
              )));
        }
      } else {}
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: SizedBox()),
        Own_Page_Language_Switch(
          on_change: (value) async {
            String _new_lan =
                value == Global_Language.eng ? "english" : "german";
            if (await Backend_Com().change_userdata("language", _new_lan) ==
                "ok") {
              setState(() {
                global_userdata.language = _new_lan;
              });
            }
          },
        ),
        SizedBox(
          height: 15,
        ),
        global_usertype == Usertype.user
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      global_language == Global_Language.eng
                          ? "Show in ranking"
                          : "Im Ranking anzeigen",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                      value: global_userdata.show_in_ranking,
                      fillColor: MaterialStateProperty.all(global_color_1),
                      onChanged: (value) async {
                        if (await Backend_Com()
                                .change_userdata("show_in_ranking", value) ==
                            "ok") {
                          setState(() {
                            global_userdata.show_in_ranking = value;
                          });
                        }
                      })
                ],
              )
            : Container(),
        Expanded(child: SizedBox()),
        global_usertype == Usertype.user
            ? Own_Button_2(
                onPressed: () {
                  _open_sure_popup();
                },
                color: global_color_2,
                width: 180,
                height: 30,
                child: Text(
                  global_language == Global_Language.eng
                      ? "delete Profile"
                      : "Profil löschen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              )
            : Container(),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
