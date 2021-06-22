import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_page_language_switch.dart';

class Settings extends StatefulWidget {
  static const String route = '/settings';
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: SizedBox()),
        Own_Page_Language_Switch(),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("List in Ranking",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10,
            ),
            Checkbox(
                value: global_list_in_ranking,
                fillColor: MaterialStateProperty.all(global_color_1),
                onChanged: (value) {
                  setState(() {
                    global_list_in_ranking = value;
                  });
                })
          ],
        ),
        Expanded(child: SizedBox()),
        Own_Button_2(
          onPressed: () {},
          color: global_color_2,
          width: 180,
          height: 30,
          child: Text(
            "delete Profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
