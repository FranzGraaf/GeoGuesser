import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class Sure_Popup extends StatefulWidget {
  const Sure_Popup({Key key}) : super(key: key);

  @override
  _Sure_PopupState createState() => _Sure_PopupState();
}

class _Sure_PopupState extends State<Sure_Popup> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: PointerInterceptor(
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
                    text: "No",
                    color: global_color_2,
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Sure?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Expanded(child: SizedBox()),
                  Own_Button_3(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    text: "Yes",
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
    );
  }
}
