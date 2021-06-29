import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Light_Dark_Switch extends StatefulWidget {
  @override
  _Own_Light_Dark_SwitchState createState() => _Own_Light_Dark_SwitchState();
}

class _Own_Light_Dark_SwitchState extends State<Own_Light_Dark_Switch> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Container(
      child: IconButton(
        icon: Icon(
          global_theme_mode == Global_Theme_Mode.light
              ? Icons.wb_sunny
              : Icons.wb_sunny_outlined,
          color: global_theme_mode == Global_Theme_Mode.light
              ? Colors.blueAccent
              : Colors.white,
        ),
        onPressed: () {
          setState(() {
            switch (global_theme_mode) {
              case Global_Theme_Mode.light:
                global_theme_mode = Global_Theme_Mode.dark;
                break;
              case Global_Theme_Mode.dark:
                global_theme_mode = Global_Theme_Mode.light;
                break;
              default:
            }
          });
          global_theme_mode_streamController.add(global_theme_mode);
        },
      ) /*DropdownButton<Global_Theme_Mode>(
        value: global_theme_mode,
        icon: Icon(Icons.arrow_downward),
        iconSize: 15,
        elevation: 5,
        /*style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),*/
        onChanged: (Global_Theme_Mode newValue) {
          setState(() {
            global_theme_mode = newValue;
          });
          global_theme_mode_streamController.add(global_theme_mode);
        },
        items: Global_Theme_Mode.values.map((Global_Theme_Mode value) {
          return DropdownMenuItem<Global_Theme_Mode>(
            value: value,
            child: SizedBox(
              //width: 276,
              child: Row(
                children: [
                  Icon(
                    global_theme_mode_info[value].icon,
                    color: global_color_5,
                  )
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
      )*/
      ,
    );
  }
}
