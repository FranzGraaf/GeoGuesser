import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Page_Language_Switch extends StatefulWidget {
  Function(Global_Language newValue) on_change;
  Own_Page_Language_Switch({@required this.on_change});
  @override
  _Own_Page_Language_SwitchState createState() =>
      _Own_Page_Language_SwitchState();
}

class _Own_Page_Language_SwitchState extends State<Own_Page_Language_Switch> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Container(
      width: 220,
      padding: EdgeInsets.only(left: 10, right: 10),
      //height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<Global_Language>(
        value: global_language,
        icon: Icon(
          Icons.arrow_downward,
          color: global_color_1,
        ),
        iconSize: 15,
        elevation: 5,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        /*underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),*/
        onChanged: (Global_Language newValue) {
          widget.on_change(newValue);
          setState(() {
            global_language = newValue;
          });
          global_language_streamController.add(global_language);
        },
        items: Global_Language.values.map((Global_Language value) {
          return DropdownMenuItem<Global_Language>(
            value: value,
            child: SizedBox(
              width: 180,
              child: Row(
                children: [
                  Image.asset(
                    global_language_info[value].icon,
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(global_language_info[value].name),
                  /*Expanded(
                    child: SizedBox(),
                  ),*/
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
