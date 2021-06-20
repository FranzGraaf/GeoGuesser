import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Page_Language_Switch extends StatefulWidget {
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
      //width: 30,
      //height: 30,
      //color: Colors.orangeAccent,
      child: DropdownButton<Global_Language>(
        value: global_language,
        icon: Icon(Icons.arrow_downward),
        iconSize: 15,
        elevation: 5,
        /*style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),*/
        onChanged: (Global_Language newValue) {
          setState(() {
            global_language = newValue;
          });
          global_language_streamController.add(global_language);
        },
        items: Global_Language.values.map((Global_Language value) {
          return DropdownMenuItem<Global_Language>(
            value: value,
            child: SizedBox(
              //width: 276,
              child: Row(
                children: [
                  Image.asset(
                    global_language_info[value].icon,
                    width: 25,
                  ),
                  /*SizedBox(
                    width: 20,
                  ),
                  Text(global_language_info[value].name),*/
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
