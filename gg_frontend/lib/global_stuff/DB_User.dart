import 'dart:convert';

import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:intl/intl.dart';

class DB_User {
  String id;
  bool verified;
  String image_url;
  String image_name;
  String nickname;
  int points;
  int ranking;

  DB_User({
    this.id,
    this.verified,
    this.image_url,
    this.image_name,
    this.nickname,
    this.points,
    this.ranking,
  });

  DB_User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    verified = json['verified'];
    image_url = json['image_url'];
    image_name = json['image_name'];
    nickname = json['nickname'];
    points = json['points'];
    ranking = json['ranking'];
  }
}
