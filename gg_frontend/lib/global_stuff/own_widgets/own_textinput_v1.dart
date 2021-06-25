import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Textinput_V1 extends StatefulWidget {
  bool obscure;
  String label;
  String hint_text;
  bool enabled;
  bool autofocus;
  double width;
  Function(String value) on_changed;
  String init_text;
  int max_lines;
  Own_Textinput_V1(
      {this.max_lines = 1,
      this.init_text = "",
      this.enabled = true,
      this.autofocus = false,
      this.label,
      this.hint_text,
      this.on_changed,
      this.obscure = false,
      this.width = 230});
  @override
  _Own_Textinput_V1State createState() => _Own_Textinput_V1State();
}

class _Own_Textinput_V1State extends State<Own_Textinput_V1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50,
      padding: EdgeInsets.only(top: 3, bottom: 3, left: 6, right: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.black)),
      child: TextFormField(
        cursorColor: global_color_1,
        maxLines: widget.max_lines,
        initialValue: widget.init_text,
        enabled: widget.enabled,
        autofocus: widget.autofocus,
        obscureText: widget.obscure,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: widget.hint_text,
          labelText: widget.label,
          hintStyle: TextStyle(fontSize: 20),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: global_color_1, width: 2),
          ),
        ),
        onChanged: (value) {
          widget.on_changed(value);
        },
        onFieldSubmitted: (value) {},
      ),
    );
  }
}
