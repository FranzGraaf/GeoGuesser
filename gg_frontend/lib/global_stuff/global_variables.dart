import 'dart:async';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/DB_User.dart';

enum Device { android, ios, web }
Device global_device = Device
    .web; // set the target device to aktivate or deactivate the according parts of the codes

double global_mobile_treshold = 700;
String global_active_route = "/";

enum Usertype { visitor, user }
Usertype global_usertype = Usertype.visitor; // usertype is visitor by default
DB_User global_userdata = DB_User();
int global_total_players;

StreamController<bool> global_rebuild_controller =
    StreamController<bool>.broadcast();

bool global_show_in_ranking = true;
String global_default_user_image =
    "https://firebasestorage.googleapis.com/v0/b/geoguesser-bccbe.appspot.com/o/Avatar_Bild.png?alt=media&token=70c16373-b633-4bfe-a34b-7d95870f3e21";

// Firebase Storage Bucket Link
final String firebase_bucket_link =
    "gs://fellowcoder-org-dev.appspot.com"; // "gs://fellowcoder-org-dev.appspot.com" // "gs://fellowcoder-org.appspot.com"

//Authentication START--------------------------------------------------------------------------
final FirebaseAuth auth_firebase = FirebaseAuth.instance;
//Authentication END--------------------------------------------------------------------------

//Color variables START-----------------------------------------------------------------------
// Schema 1
Color global_color_background_1 = Color.fromRGBO(250, 250, 250, 1);
Color global_color_1 = Color.fromRGBO(16, 158, 0, 1);
Color global_color_2 = Color.fromRGBO(214, 118, 8, 1);
Color global_color_3 = Color.fromRGBO(17, 0, 255, 1);
Color global_color_5_black = Color.fromRGBO(0, 0, 0, 1);
//Color variables END-----------------------------------------------------------------------

//Language variables START-----------------------------------------------------------------------
enum Global_Language { ger, eng }
Global_Language global_language = Global_Language.eng;

StreamController<Global_Language> global_language_streamController =
    StreamController.broadcast();

class Language_Info {
  String name;
  String icon;
  Language_Info({this.icon, this.name});
}

final Map<Global_Language, Language_Info> global_language_info = {
  Global_Language.ger:
      Language_Info(name: "German", icon: "assets/countries/ger_100.png"),
  Global_Language.eng:
      Language_Info(name: "English", icon: "assets/countries/uk_100.png"),
};
//Language variables END-----------------------------------------------------------------------

//Theme Mode variables START-----------------------------------------------------------------------
enum Global_Theme_Mode { light, dark }
Global_Theme_Mode global_theme_mode = Global_Theme_Mode.light;

StreamController<Global_Theme_Mode> global_theme_mode_streamController =
    StreamController.broadcast();

class Theme_Mode_Info {
  String name;
  IconData icon;
  Theme_Mode_Info({this.icon, this.name});
}

final Map<Global_Theme_Mode, Theme_Mode_Info> global_theme_mode_info = {
  Global_Theme_Mode.light: Theme_Mode_Info(name: "light", icon: Icons.wb_sunny),
  Global_Theme_Mode.dark:
      Theme_Mode_Info(name: "dark", icon: Icons.wb_sunny_outlined),
};
//Theme Mode variables END-----------------------------------------------------------------------

//Point Step variables START-----------------------------------------------------------------------
Map<double, int> global_point_steps = {
  0.5: 999,
  1: 500,
  10: 100,
  20: 80,
  30: 75,
  50: 70,
  100: 50,
  200: 25,
  300: 5
}; // 0-0.5km distance => 999 Points; 0.5-1km distance => 500 Points; ...
//Point Step variables END-----------------------------------------------------------------------

//Location variables START-----------------------------------------------------------------------
List<Location_Variable> global_location_variables = [
  Location_Variable(
      name_de: "Paris", name_en: "Paris", lat: 48.856613, lon: 2.352222),
];

class Location_Variable {
  String name_de;
  String name_en;
  double lon;
  double lat;
  Location_Variable({this.name_de, this.name_en, this.lon, this.lat});
}
//Location variables END-----------------------------------------------------------------------

