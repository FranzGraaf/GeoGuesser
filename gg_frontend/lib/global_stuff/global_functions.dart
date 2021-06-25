/*import 'package:Fellowcoder_Frontend/global_stuff/KEYS.dart';
import 'package:Fellowcoder_Frontend/global_stuff/global_variables.dart';
import 'package:firebase_auth/firebase_auth.dart';*/
import 'dart:math';

import 'package:cooky/cooky.dart' as cookie;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gg_frontend/global_stuff/KEYS.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

Future<String> registerWithEmailPassword(String email, String password) async {
  try {
    await auth_firebase.createUserWithEmailAndPassword(
        email: email, password: password);
    String _id_token = await auth_firebase.currentUser.getIdToken();
    cookie.set("id_token", _id_token);
    cookie.set("refresh_token", auth_firebase.currentUser.refreshToken);
    return _id_token;
  } on FirebaseAuthException catch (e) {
    print(e.message);
    return null;
  }
}

Future<String> signInWithEmailPassword(String email, String password) async {
  try {
    await auth_firebase.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    String id_token = await auth_firebase.currentUser.getIdToken();
    cookie.set("id_token", id_token);
    cookie.set("refresh_token", auth_firebase.currentUser.refreshToken);
    return id_token;
  } on FirebaseAuthException catch (e) {
    print(e.message);
    return null;
  }
}

Future<String> logout() async {
  auth_firebase.signOut();
  cookie.remove("id_token");
  cookie.remove("refresh_token");
  return null;
}

Future<String> refresh_id_token() async {
  // refreshes the session id token with the refresh id token
  if (cookie.get("refresh_token") != null) {
    String _refresh_token = cookie.get("refresh_token");
    String url = "https://securetoken.googleapis.com/v1/token?key=" +
        FIREBASE_API_KEY; // FIREBASE_API_KEY // FIREBASE_API_KEY_2
    Map<String, dynamic> data = {
      "grant_type": "refresh_token",
      "refresh_token": _refresh_token
    };
    Map<String, String> _headers = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded"
    };
    try {
      http.Response _response =
          await http.post(Uri.parse(url), body: data, headers: _headers);
      String _new_id_token = json.decode(_response.body)["id_token"];
      cookie.set("id_token", _new_id_token);
      return _new_id_token;
    } on Exception catch (e) {
      // something went wrong
      return "";
    }
  }
  return "";
}

double calc_length_min(
  double min_length,
  double screen_percentage,
  double screen_length,
) {
  // outputs a length with a minimum value
  if (screen_percentage * screen_length < min_length) {
    return min_length;
  } else {
    return screen_percentage * screen_length;
  }
}

double calc_length_max(
  double max_length,
  double screen_percentage,
  double screen_length,
) {
  // outputs a length with a maximum value
  if (screen_percentage * screen_length > max_length) {
    return max_length;
  } else {
    return screen_percentage * screen_length;
  }
}

double calc_length_min_max(
  double min_length,
  double max_length,
  double screen_percentage,
  double screen_length,
) {
  // outputs a length with a maximum and minimum value
  if (screen_percentage * screen_length < min_length) {
    return min_length;
  } else if (screen_percentage * screen_length > max_length) {
    return max_length;
  } else {
    return screen_percentage * screen_length;
  }
}

DateTime string_to_date(String string) {
  return DateFormat("yyyy-MM-dd hh:mm:ss").parse(string);
}

double get_distance_lat_lon_in_km(lat1, lon1, lat2, lon2) {
  double R = 6371; // Radius of the earth in km
  double dLat = deg2rad(lat2 - lat1); // deg2rad below
  double dLon = deg2rad(lon2 - lon1);
  double a = sin(dLat / 2) * sin(dLat / 2) +
      cos(deg2rad(lat1)) * cos(deg2rad(lat2)) * sin(dLon / 2) * sin(dLon / 2);
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  double d = R * c; // Distance in km
  return d;
}

double deg2rad(deg) {
  return deg * (pi / 180);
}
