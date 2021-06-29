import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Button_1 extends StatefulWidget {
  Widget child;
  String text;
  double fontSize;
  Color color;
  double width;
  double height;
  Function() onPressed;
  Own_Button_1({
    Key key,
    this.child,
    this.text = "text",
    this.color,
    this.width = 300,
    this.height = 100,
    this.fontSize = 49,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _Own_Button_1State createState() => _Own_Button_1State();
}

class _Own_Button_1State extends State<Own_Button_1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor:
                MaterialStateProperty.all(widget.color ?? global_color_1),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(width: 5, color: Colors.white)))),
        onPressed: () {
          widget.onPressed();
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          alignment: Alignment.center,
          child: widget.child ??
              Text(
                widget.text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: widget.fontSize),
              ),
        ));
  }
}
