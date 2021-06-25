import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:gg_frontend/pages/game.dart';
import 'package:gg_frontend/pages/homepage.dart';

class Result extends StatefulWidget {
  var arguments;
  static const String route = '/result';
  Result({Key key, this.arguments}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/distance.png",
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              widget.arguments["distance"].toString() + " km",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "+ 10 Pts.",
          style: TextStyle(
              color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Own_Button_3(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Homepage.route);
              },
              text: "End",
              color: global_color_2,
            ),
            SizedBox(
              width: 10,
            ),
            Own_Button_3(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Game.route);
              },
              text: "Next",
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
