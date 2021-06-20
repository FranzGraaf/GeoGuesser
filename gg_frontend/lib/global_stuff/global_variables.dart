import 'dart:async';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double global_mobile_treshold = 700;
String global_active_route = "/";

enum Usertype { visitor, user }
Usertype global_usertype = Usertype.visitor;

StreamController<bool> global_rebuild_controller =
    StreamController<bool>.broadcast();

// Firebase Storage Bucket Link
final String firebase_bucket_link =
    "gs://fellowcoder-org-dev.appspot.com"; // "gs://fellowcoder-org-dev.appspot.com" // "gs://fellowcoder-org.appspot.com"

//Global Data START--------------------------------------------------------------------------
/*DB_User global_user_data;
Map<String, dynamic> global_search_data;
List<DB_User> global_results_list;
//Global Data END--------------------------------------------------------------------------

//Authentication START--------------------------------------------------------------------------
final FirebaseAuth auth_firebase = FirebaseAuth.instance;*/
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

//Country variables START-----------------------------------------------------------------------
enum Country {
  all,
  alb,
  and,
  argentina,
  australia,
  austria,
  belarus,
  belgium,
  brazil,
  bul,
  can,
  china,
  cro,
  cyp,
  cze,
  den,
  est,
  fin,
  fra,
  ger,
  gre,
  hun,
  ice,
  india,
  ire,
  ita,
  japan,
  korea,
  kos,
  lat,
  lie,
  lit,
  lux,
  mal,
  mexico,
  mol,
  monaco,
  montenegro,
  net,
  nor,
  peru,
  pol,
  por,
  rom,
  russia,
  smar,
  ser,
  slovakia,
  slovenia,
  spa,
  swe,
  swi,
  tur,
  ukr,
  uk,
  usa,
}

class Country_Info {
  String name;
  String icon;
  Country_Info({this.icon, this.name});
}

final Map<Country, Country_Info> global_country_info = {
  Country.all: Country_Info(name: "All", icon: "assets/countries/all.png"),
  Country.alb: Country_Info(name: "Albania", icon: "assets/countries/alb.png"),
  Country.and: Country_Info(name: "Andorra", icon: "assets/countries/and.png"),
  Country.argentina:
      Country_Info(name: "Argentina", icon: "assets/countries/argentina.png"),
  Country.australia:
      Country_Info(name: "Australia", icon: "assets/countries/australia.png"),
  Country.austria:
      Country_Info(name: "Austia", icon: "assets/countries/austria.png"),
  Country.belarus:
      Country_Info(name: "Belarus", icon: "assets/countries/belarus.png"),
  Country.belgium:
      Country_Info(name: "Belgium", icon: "assets/countries/belgium.png"),
  Country.brazil:
      Country_Info(name: "Brazil", icon: "assets/countries/brazil.png"),
  Country.bul: Country_Info(name: "Bulgaria", icon: "assets/countries/bul.png"),
  Country.can: Country_Info(name: "Canada", icon: "assets/countries/can.png"),
  Country.china:
      Country_Info(name: "China", icon: "assets/countries/china.png"),
  Country.cro: Country_Info(name: "Croatia", icon: "assets/countries/cro.png"),
  Country.cyp: Country_Info(name: "Cyprus", icon: "assets/countries/cyp.png"),
  Country.cze:
      Country_Info(name: "Czech Republic", icon: "assets/countries/cze.png"),
  Country.den: Country_Info(name: "Denmark", icon: "assets/countries/den.png"),
  Country.est: Country_Info(name: "Estonia", icon: "assets/countries/est.png"),
  Country.fin: Country_Info(name: "Finland", icon: "assets/countries/fin.png"),
  Country.fra: Country_Info(name: "France", icon: "assets/countries/fra.png"),
  Country.ger: Country_Info(name: "Germany", icon: "assets/countries/ger.png"),
  Country.gre: Country_Info(name: "Greece", icon: "assets/countries/gre.png"),
  Country.hun: Country_Info(name: "Hungary", icon: "assets/countries/hun.png"),
  Country.ice: Country_Info(name: "Iceland", icon: "assets/countries/ice.png"),
  Country.india:
      Country_Info(name: "India", icon: "assets/countries/india.png"),
  Country.ire: Country_Info(name: "Ireland", icon: "assets/countries/ire.png"),
  Country.ita: Country_Info(name: "Italy", icon: "assets/countries/ita.png"),
  Country.japan:
      Country_Info(name: "Japan", icon: "assets/countries/japan.png"),
  Country.korea:
      Country_Info(name: "Korea", icon: "assets/countries/korea.png"),
  Country.kos: Country_Info(name: "Kosovo", icon: "assets/countries/kos.png"),
  Country.lat: Country_Info(name: "Latvia", icon: "assets/countries/lat.png"),
  Country.lie:
      Country_Info(name: "Liechtenstein", icon: "assets/countries/lie.png"),
  Country.lit:
      Country_Info(name: "Lithuania", icon: "assets/countries/lit.png"),
  Country.lux:
      Country_Info(name: "Luxembourg", icon: "assets/countries/lux.png"),
  Country.mal: Country_Info(name: "Malta", icon: "assets/countries/mal.png"),
  Country.mexico:
      Country_Info(name: "Mexico", icon: "assets/countries/mexico.png"),
  Country.mol: Country_Info(name: "Moldova", icon: "assets/countries/mol.png"),
  Country.monaco:
      Country_Info(name: "Monaco", icon: "assets/countries/monaco.png"),
  Country.montenegro:
      Country_Info(name: "Montenegro", icon: "assets/countries/montenegro.png"),
  Country.net:
      Country_Info(name: "Netherlands", icon: "assets/countries/net.png"),
  Country.nor: Country_Info(name: "Norway", icon: "assets/countries/nor.png"),
  Country.peru: Country_Info(name: "Peru", icon: "assets/countries/peru.png"),
  Country.pol: Country_Info(name: "Poland", icon: "assets/countries/pol.png"),
  Country.por: Country_Info(name: "Portugal", icon: "assets/countries/por.png"),
  Country.rom: Country_Info(name: "Romania", icon: "assets/countries/rom.png"),
  Country.russia:
      Country_Info(name: "Russia", icon: "assets/countries/russia.png"),
  Country.smar:
      Country_Info(name: "San Marino", icon: "assets/countries/smar.png"),
  Country.ser: Country_Info(name: "Serbia", icon: "assets/countries/ser.png"),
  Country.slovakia:
      Country_Info(name: "Slovakia", icon: "assets/countries/slovakia.png"),
  Country.slovenia:
      Country_Info(name: "Slovenia", icon: "assets/countries/slovenia.png"),
  Country.spa: Country_Info(name: "Spain", icon: "assets/countries/spa.png"),
  Country.swe: Country_Info(name: "Sweden", icon: "assets/countries/swe.png"),
  Country.swi:
      Country_Info(name: "Switzerland", icon: "assets/countries/swi.png"),
  Country.tur: Country_Info(name: "Turkey", icon: "assets/countries/tur.png"),
  Country.ukr: Country_Info(name: "Ukrain", icon: "assets/countries/ukr.png"),
  Country.uk:
      Country_Info(name: "United Kingdom", icon: "assets/countries/uk.png"),
  Country.usa: Country_Info(name: "USA", icon: "assets/countries/usa.png"),
};
//Country variables END-----------------------------------------------------------------------

//Coding language variables START-----------------------------------------------------------------------
enum Coding_Language {
  all,
  android,
  cpp,
  csharp,
  css,
  dart,
  firebase,
  flutter,
  html,
  ios,
  java,
  js,
  kotlin,
  mysql,
  php,
  python,
  sql,
  swift,
  tensorflow,
  unity,
  wordpress
}

class Coding_Language_Info {
  String name;
  String icon;
  Coding_Language_Info({this.icon, this.name});
}

final Map<Coding_Language, Coding_Language_Info> global_coding_language_info = {
  Coding_Language.all: Coding_Language_Info(
      name: "All", icon: "assets/coding_languages/all_100.png"),
  Coding_Language.python: Coding_Language_Info(
      name: "Python", icon: "assets/coding_languages/python_100.png"),
  Coding_Language.csharp: Coding_Language_Info(
      name: "C#", icon: "assets/coding_languages/c#_100.png"),
  Coding_Language.java: Coding_Language_Info(
      name: "Java", icon: "assets/coding_languages/java_100.png"),
  Coding_Language.android: Coding_Language_Info(
      name: "Android", icon: "assets/coding_languages/android_100.png"),
  Coding_Language.cpp: Coding_Language_Info(
      name: "C++", icon: "assets/coding_languages/c++_100.png"),
  Coding_Language.css: Coding_Language_Info(
      name: "Css", icon: "assets/coding_languages/css3_100.png"),
  Coding_Language.dart: Coding_Language_Info(
      name: "Dart", icon: "assets/coding_languages/dart_100.png"),
  Coding_Language.firebase: Coding_Language_Info(
      name: "Firebase", icon: "assets/coding_languages/firebase_100.png"),
  Coding_Language.flutter: Coding_Language_Info(
      name: "Flutter", icon: "assets/coding_languages/flutter_100.png"),
  Coding_Language.html: Coding_Language_Info(
      name: "HTML", icon: "assets/coding_languages/html5_100.png"),
  Coding_Language.ios: Coding_Language_Info(
      name: "IOS", icon: "assets/coding_languages/ios_100.png"),
  Coding_Language.js: Coding_Language_Info(
      name: "JavaScript", icon: "assets/coding_languages/js_100.png"),
  Coding_Language.kotlin: Coding_Language_Info(
      name: "Kotlin", icon: "assets/coding_languages/kotlin_100.png"),
  Coding_Language.mysql: Coding_Language_Info(
      name: "MySql", icon: "assets/coding_languages/mysql_100.png"),
  Coding_Language.php: Coding_Language_Info(
      name: "PHP", icon: "assets/coding_languages/php_100.png"),
  Coding_Language.sql: Coding_Language_Info(
      name: "SQL", icon: "assets/coding_languages/sql_100.png"),
  Coding_Language.swift: Coding_Language_Info(
      name: "Swift", icon: "assets/coding_languages/swift_100.png"),
  Coding_Language.tensorflow: Coding_Language_Info(
      name: "Tensorflow", icon: "assets/coding_languages/tensorflow_100.png"),
  Coding_Language.unity: Coding_Language_Info(
      name: "Unity", icon: "assets/coding_languages/unity_100.png"),
  Coding_Language.wordpress: Coding_Language_Info(
      name: "Wordpress", icon: "assets/coding_languages/wordpress_100.png"),
};

//Coding language variables END-----------------------------------------------------------------------
