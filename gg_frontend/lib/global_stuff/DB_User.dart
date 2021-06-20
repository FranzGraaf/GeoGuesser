import 'dart:convert';

import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:intl/intl.dart';

class DB_User {
  String id;
  bool verified;
  String bildurl;
  String bild_name;
  DateTime registriert;
  DateTime lastlogin;
  DateTime geburtsdatum;
  String land;
  String name;
  String vorname;
  List<String> sprachen;
  String beschreibungstext;
  List<Map<String, dynamic>> chats;

  DB_User({
    this.id,
    this.verified,
    this.bild_name,
    this.bildurl,
    this.registriert,
    this.lastlogin,
    this.geburtsdatum,
    this.land,
    this.name,
    this.vorname,
    this.sprachen,
    this.beschreibungstext,
    this.chats,
  });

  DB_User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    verified = json['Verified'];
    if (json['registriert'] != null) {
      registriert = string_to_date(json['registriert']);
    }
    if (json['lastlogin'] != null) {
      lastlogin = string_to_date(json['lastlogin']);
    }
    if (json['geburtsdatum'] != null) {
      geburtsdatum = string_to_date(json['geburtsdatum']);
    }
    bildurl = json['bildurl'];
    bild_name = json['bild_name'];
    land = json['land'];
    name = json['name'];
    vorname = json['vorname'];
    beschreibungstext = json['beschreibungstext'];
    sprachen = [];
    if (json['sprachen'] != null && json['sprachen'].length != 0) {
      List<dynamic> list = json['sprachen'];
      list.forEach((element) {
        sprachen.add(element);
      });
    }

    chats = [];
    if (json['chats'] != null &&
        json['chats'].runtimeType != String &&
        json['chats'] != "") {
      json['chats'].forEach((element) {
        chats.add(element);
      });
      /*json['chats'].forEach((k, v) {
        chats[k] = v;
      });*/
    }
  }
}
