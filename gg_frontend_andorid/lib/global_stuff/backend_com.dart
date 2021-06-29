import 'dart:convert';
import 'package:gg_frontend/global_stuff/DB_User.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
//import 'package:cooky/cooky.dart' if (dart.library.io) "" as cookie;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Backend_Com {
  static String _be_url = DEVELOPMENT
      ? "http://192.168.0.113:8080/"
      : "https://geoguesser-be-run-liw4rmhvna-ey.a.run.app"; // http://192.168.0.113:8080 (run backend in production mode )  // https://geoguesser-be-run-liw4rmhvna-ey.a.run.app (production)

  Future getdata(String url) async {
    await refresh_id_token();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var _id_token = prefs.getString('id_token');
    var _header = {"id_token": _id_token};
    http.Response response = await http.get(Uri.parse(url), headers: _header);
    return json.decode(response.body);
  }

  Future postdata(String url, dynamic data) async {
    await refresh_id_token();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var _id_token = prefs.getString('id_token');
    var _header = {"id_token": _id_token};
    http.Response response =
        await http.post(Uri.parse(url), body: data, headers: _header);
    return json.decode(response.body);
  }

  Future<String> get_image_link_from_storage(String image_name) async {
    // gets an public link to view an image from the storage
    String url =
        _be_url + "/get_image_link_from_storage?image=" + image_name.toString();
    String _storage_image_link = await Backend_Com().getdata(url);
    return _storage_image_link;
  }

// START interactions ----------------------------------------------------------
  Future create_user(Map<String, dynamic> data) async {
    String url = _be_url + "/create_user";
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }

  Future<DB_User> get_user() async {
    String url = _be_url + "/get_user";
    Map<String, dynamic> data = null;
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    if (_response == "nok") {
      return DB_User();
    }
    return DB_User.fromJson(_response);
  }

  Future change_userdata(String key, dynamic value) async {
    String url = _be_url + "/change_userdata";
    Map<String, dynamic> data = {"key": key, "value": value};
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }

  Future delete_user() async {
    String url = _be_url + "/delete_user";
    Map<String, dynamic> data = {};
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }

  Future get_ranking(int points) async {
    String url = _be_url + "/get_ranking";
    Map<String, dynamic> data = {"points": points};
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }

  Future get_total_players() async {
    String url = _be_url + "/get_total_players";
    Map<String, dynamic> data = {};
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }

  Future get_ranklist(int rank) async {
    String url = _be_url + "/get_ranklist";
    Map<String, dynamic> data = {"rank": rank};
    var _response = (await Backend_Com().postdata(url, jsonEncode(data)));
    return _response;
  }
// END interactions ----------------------------------------------------------
}
