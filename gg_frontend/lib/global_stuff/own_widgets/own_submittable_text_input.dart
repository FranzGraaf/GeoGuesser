import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Own_Submittable_Text_Input extends StatefulWidget {
  TextEditingController controller;
  bool enabled;
  int max_lines;
  TextStyle text_style;
  String label_text;
  String hint_text;
  bool autofocus;
  Function(String value) on_changed;
  Function(String value) submitted;
  Function() aborted;
  Own_Submittable_Text_Input(this.controller,
      {this.max_lines,
      this.enabled = true,
      this.text_style,
      this.label_text,
      this.hint_text,
      this.autofocus = false,
      @required this.on_changed,
      @required this.submitted,
      @required this.aborted});

  @override
  _Own_Submittable_Text_InputState createState() =>
      _Own_Submittable_Text_InputState();
}

class _Own_Submittable_Text_InputState
    extends State<Own_Submittable_Text_Input> {
  String flag;

  @override
  void initState() {
    super.initState();
    flag = widget.controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      autofocus: widget.autofocus,
      maxLines: widget.max_lines,
      controller: widget.controller,
      style: widget.text_style,
      onChanged: (value) {
        widget.on_changed(value);
        setState(() {});
      },
      cursorColor: global_color_1,
      decoration: InputDecoration(
          labelText: widget.label_text,
          hintText: widget.hint_text,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: global_color_1, width: 2),
          ),
          suffixIcon: flag != widget.controller.text
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () async {
                        setState(() {
                          flag = widget.controller.text;
                        });
                        FocusScope.of(context).unfocus();
                        widget.submitted(widget.controller.text);
                      },
                    ),
                    IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          setState(() {
                            widget.controller.text = flag;
                          });
                          FocusScope.of(context).unfocus();
                          widget.aborted();
                        }),
                  ],
                )
              : null),
    );
  }
}
