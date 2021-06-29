import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Text_Date_Picker extends StatefulWidget {
  TextEditingController controller;
  bool enabled;
  bool date_and_time;
  EdgeInsets padding;
  DateTime date;
  DateTime first_date;
  String label;
  double width;
  Function(DateTime value) onValueChanged;
  TextStyle text_style;
  Text_Date_Picker({
    this.enabled = true,
    this.date_and_time = false,
    this.date,
    this.first_date,
    this.label,
    this.width,
    this.onValueChanged,
    this.padding = const EdgeInsets.only(top: 0, bottom: 0),
    this.controller,
    this.text_style,
  });

  @override
  _Text_Date_PickerState createState() => _Text_Date_PickerState();
}

class _Text_Date_PickerState extends State<Text_Date_Picker> {
  TextEditingController _date_controller = TextEditingController();

  void _format_text() {
    if (widget.date != null) {
      if (widget.date_and_time) {
        _date_controller.text =
            DateFormat('dd.MM.yyyy HH:mm').format(widget.date);
      } else {
        _date_controller.text = DateFormat('dd.MM.yyyy').format(widget.date);
      }
    } else {
      if (widget.date_and_time) {
        _date_controller.text = "--.--.---- --:--";
      } else {
        _date_controller.text = "--.--.----";
      }
    }
  }

  @override
  void initState() {
    if (widget.controller != null) {
      _date_controller = widget.controller;
    }
    _format_text();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      padding: widget.padding,
      child: GestureDetector(
        onTap: () {
          if (widget.enabled) {
            showDatePicker(
                    context: context,
                    initialDate:
                        widget.date == null ? DateTime.now() : widget.date,
                    firstDate: widget.first_date,
                    lastDate: widget.first_date.add(Duration(days: 2000000)))
                .then((value) {
              setState(() {
                if (value != null) {
                  if (widget.date_and_time) {
                    widget.date = DateTime(value.year, value.month, value.day,
                        widget.date.hour, widget.date.minute);
                    _format_text();
                  } else {
                    widget.date = DateTime(
                      value.year,
                      value.month,
                      value.day,
                    );
                    _format_text();
                  }
                }
              });
              widget.onValueChanged(widget.date);
            });
            if (widget.date_and_time) {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(
                  widget.date == null ? DateTime.now() : widget.date,
                ),
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(alwaysUse24HourFormat: true),
                    child: child,
                  );
                },
              ).then((value) {
                setState(() {
                  if (value != null) {
                    widget.date = DateTime(widget.date.year, widget.date.month,
                        widget.date.day, value.hour, value.minute);
                    _format_text();
                  }
                });
                widget.onValueChanged(widget.date);
              });
            }
          }
        },
        child: TextFormField(
          style: widget.text_style,
          enabled: false, //widget.enabled,
          controller: _date_controller,
          keyboardType: TextInputType.datetime,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                /*showDatePicker(
                        context: context,
                        initialDate:
                            widget.date == null ? DateTime.now() : widget.date,
                        firstDate: widget.first_date,
                        lastDate:
                            widget.first_date.add(Duration(days: 2000000)))
                    .then((value) {
                  setState(() {
                    if (value != null) {
                      if (widget.date_and_time) {
                        widget.date = DateTime(value.year, value.month,
                            value.day, widget.date.hour, widget.date.minute);
                        _format_text();
                      } else {
                        widget.date = DateTime(
                          value.year,
                          value.month,
                          value.day,
                        );
                        _format_text();
                      }
                    }
                  });
                  widget.onValueChanged(widget.date);
                });
                if (widget.date_and_time) {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(
                      widget.date == null ? DateTime.now() : widget.date,
                    ),
                    builder: (context, child) {
                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(alwaysUse24HourFormat: true),
                        child: child,
                      );
                    },
                  ).then((value) {
                    setState(() {
                      if (value != null) {
                        widget.date = DateTime(
                            widget.date.year,
                            widget.date.month,
                            widget.date.day,
                            value.hour,
                            value.minute);
                        _format_text();
                      }
                    });
                    widget.onValueChanged(widget.date);
                  });
                }*/
              },
              icon: Icon(Icons.calendar_today),
            ),
            labelText: widget.label,
          ),
          onFieldSubmitted: (newValue) {
            try {
              if (widget.date_and_time) {
                widget.date = DateFormat('dd.MM.yyyy HH:mm').parse(newValue);
              } else {
                widget.date = DateFormat('dd.MM.yyyy').parse(newValue);
              }
            } catch (error) {
              Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                'Datum überprüfen',
                textAlign: TextAlign.center,
              )));
            }
            _format_text();
            widget.onValueChanged(widget.date);
          },
        ),
      ),
    );
  }
}
