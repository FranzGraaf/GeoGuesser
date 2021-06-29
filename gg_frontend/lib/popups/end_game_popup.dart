import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class End_Game_Popup extends StatefulWidget {
  const End_Game_Popup({Key key}) : super(key: key);

  @override
  _End_Game_PopupState createState() => _End_Game_PopupState();
}

class _End_Game_PopupState extends State<End_Game_Popup> {
  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: Stack(
        children: [
          PointerInterceptor(
            child: Center(
              child: Container(
                width: 260,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: global_color_1, width: 5),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Own_Button_3(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      text: global_language == Global_Language.eng
                          ? "No"
                          : "Nein",
                      color: global_color_2,
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      global_language == Global_Language.eng
                          ? "End Game?"
                          : "Spiel beenden?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    Expanded(child: SizedBox()),
                    Own_Button_3(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      text:
                          global_language == Global_Language.eng ? "Yes" : "Ja",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
