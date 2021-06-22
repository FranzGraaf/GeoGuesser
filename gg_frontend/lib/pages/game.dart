import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';

class Game extends StatefulWidget {
  static const String route = '/game';
  const Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return SizedBox(
      width: _screen_size.width,
      height: _screen_size.height,
      child: Stack(
        children: [
          Container(
            color: Colors.lightBlueAccent,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 80,
              width: _screen_size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.transparent,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: [0.0, 1],
                    tileMode: TileMode.mirror),
              ),
              child: Column(
                children: [
                  Text(
                    "Where is ... ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Frankfurt",
                    style: TextStyle(
                        color: global_color_1,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.only(bottom: 5, left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40))),
                child: Icon(
                  Icons.exit_to_app,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Own_Button_2(
                height: 30,
                width: 150,
                onPressed: () {},
                text: "SELECT",
              ),
            ),
          )
        ],
      ),
    );
  }
}
