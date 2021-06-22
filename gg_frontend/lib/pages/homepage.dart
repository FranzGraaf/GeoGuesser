import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_1.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/login.dart';
import 'package:gg_frontend/pages/profile.dart';
import 'package:gg_frontend/pages/settings.dart';

class Homepage extends StatefulWidget {
  static const String route = '/homepage';
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Login.route);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Name / Sign In"),
              SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Image.network(
                  global_default_user_image,
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Text(
          "World Rank",
          style: TextStyle(
              color: global_color_1,
              fontSize: 40,
              fontWeight: FontWeight.normal),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("50",
                style: TextStyle(
                    color: global_color_1,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            Text(" / 203424",
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
          text: "Play",
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
          text: "Profile",
          onPressed: () {
            Navigator.of(context).pushNamed(Profile.route);
          },
          fontSize: 40,
        ),
        Expanded(
          child: SizedBox(),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Settings.route);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                width: 10,
              ),
              Text("Settings"),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
