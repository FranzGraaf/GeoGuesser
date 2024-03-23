import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/KEYS.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/google_map.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/pages/homepage.dart';
import 'package:gg_frontend/pages/result.dart';
import 'package:gg_frontend/popups/end_game_popup.dart';
import 'package:gg_frontend/popups/sure_popup.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class Game extends StatefulWidget {
  static const String route = '/game';
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  late double _target_lat;
  late double _target_lon;
  String _target_name = "";
  late double _cursor_lat;
  late double _cursor_lon;

  Location_Variable _get_random_location() {
    return global_location_variables[
        Random().nextInt(global_location_variables.length)];
  }

  double _calc_distance() {
    return get_distance_lat_lon_in_km(
        _target_lat, _target_lon, _cursor_lat, _cursor_lon);
  }

  void _open_end_game_popup() {
    showDialog(
        context: context,
        builder: (_) {
          return End_Game_Popup();
        }).then((value) {
      if (value ?? false) {
        Navigator.of(context).pushReplacementNamed(Homepage.route);
      } else {}
    });
  }

  void _open_sure_popup() async {
    showDialog(
        context: context,
        builder: (_) {
          return Sure_Popup();
        }).then((value) async {
      if (value ?? false) {
        double _distance = _calc_distance();
        int _points = _calc_result_points(_distance);
        if (global_usertype == Usertype.user) {
          if ((await Backend_Com().change_userdata(
                  "points", (global_userdata.points ?? 0) + _points) ==
              "ok")) {
            global_userdata.points = (global_userdata.points ?? 0) + _points;
          }
        }
        Navigator.of(context).pushReplacementNamed(Result.route, arguments: {
          "distance": _distance,
          "points": _points,
        });
      } else {}
    });
  }

  int _calc_result_points(double distance) {
    for (double i in global_point_steps.keys) {
      if (distance < i) {
        return global_point_steps[i]!;
      }
    }
    return 0;
  }

  @override
  void initState() {
    Location_Variable _loc = _get_random_location();
    _target_lat = _loc.lat;
    _target_lon = _loc.lon;
    _target_name =
        global_language == Global_Language.eng ? _loc.name_en : _loc.name_de;

    streamController_set_marker.stream.listen((event) {
      _cursor_lat = event[0];
      _cursor_lon = event[1];
    });
    super.initState();
  }

  @override
  void deactivate() {
    streamController_set_marker.close();
    streamController_set_marker = StreamController.broadcast();
    super.deactivate();
  }

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
              child: GoogleMap(
                init_lat: 0,
                init_lng: 0,
              )),
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
                    global_language == Global_Language.eng
                        ? "Where is ... ?"
                        : "Wo ist ... ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    _target_name,
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
            child: PointerInterceptor(
              child: GestureDetector(
                onTap: () {
                  _open_end_game_popup();
                },
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: PointerInterceptor(
                child: Own_Button_2(
                  height: 30,
                  width: 150,
                  onPressed: () {
                    if (_cursor_lat == null || _cursor_lon == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(milliseconds: 1000),
                          content: Text(
                            global_language == Global_Language.eng
                                ? "Set cursor"
                                : "Markierung setzen",
                            textAlign: TextAlign.center,
                          )));
                    } else {
                      _open_sure_popup();
                    }
                  },
                  text: "SELECT",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
