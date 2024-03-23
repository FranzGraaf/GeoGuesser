import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class Info_Popup extends StatefulWidget {
  const Info_Popup({Key? key}) : super(key: key);

  @override
  _Info_PopupState createState() => _Info_PopupState();
}

class _Info_PopupState extends State<Info_Popup> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Container(
      child: Stack(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              width: calc_length_min(300, 0.8, _screen_size.width),
              height: _screen_size.height * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: global_color_1, width: 5),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            global_language == Global_Language.eng
                                ? "Gameplay"
                                : "Spielablauf",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            global_language == Global_Language.eng
                                ? "Try to place your marker as close as possible to the given location.\nThe closer you are, the more points you get."
                                : "Versuche deinen Marker so nah wie möglich an den vorgegebenen Ort zu setzen.\nJe näher du dran bist desto mehr Punkte bekommst du.",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            global_language == Global_Language.eng
                                ? "Points"
                                : "Punkte",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: calc_length_max(600, 1, _screen_size.width),
                            child: Table(
                              border: TableBorder.all(),
                              children: [
                                for (double k in global_point_steps.keys)
                                  TableRow(
                                    children: [
                                      Info_Popup_Pointlist_Element(
                                        color: global_color_1.withOpacity(
                                            (global_point_steps[k] ?? 0) /
                                                1000),
                                        number: k,
                                        leading_text: "< ",
                                        trailing_text: " km",
                                      ),
                                      Info_Popup_Pointlist_Element(
                                        color: global_color_1.withOpacity(
                                            (global_point_steps[k] ?? 0) /
                                                1000),
                                        number: (global_point_steps[k] ?? 0)
                                            .toDouble(),
                                        leading_text: "",
                                        trailing_text: global_language ==
                                                Global_Language.eng
                                            ? " Points"
                                            : " Punkte",
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Own_Button_3(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    text: global_language == Global_Language.eng ? "Ok" : "Ok",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Info_Popup_Pointlist_Element extends StatefulWidget {
  double number;
  String leading_text;
  String trailing_text;
  Color color;
  Info_Popup_Pointlist_Element(
      {Key? key,
      required this.number,
      required this.leading_text,
      required this.trailing_text,
      this.color = Colors.white})
      : super(key: key);

  @override
  _Info_Popup_Pointlist_ElementState createState() =>
      _Info_Popup_Pointlist_ElementState();
}

class _Info_Popup_Pointlist_ElementState
    extends State<Info_Popup_Pointlist_Element> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 200,
      color: widget.color,
      child: Text(
        widget.leading_text + widget.number.toString() + widget.trailing_text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
