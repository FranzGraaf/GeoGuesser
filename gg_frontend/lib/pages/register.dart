import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/DB_User.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_textinput_v1.dart';
import 'package:gg_frontend/pages/homepage.dart';

class Register extends StatefulWidget {
  static const String route = '/register';
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _e_mail = "";
  String _passwort_0 = "";
  String _passwort_1 = "";
  bool _loading = false;

  bool _check_input() {
    if (_e_mail.length < 4) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          global_language == Global_Language.ger
              ? "Bitte gültige E-Mailadresse eingeben."
              : "Please enter a valid e-mail address.",
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 1500),
      ));
      return false;
    }
    if (_passwort_0.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          global_language == Global_Language.ger
              ? "Das Passwort ist zu kurz."
              : "Password is too short.",
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 1500),
      ));
      return false;
    }
    if (_passwort_0 != _passwort_1) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          global_language == Global_Language.ger
              ? "Die Passwörter sind nicht identisch."
              : "The passwords are not identical.",
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 1500),
      ));
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    bool _on_mobile = _screen_size.width < global_mobile_treshold;
    return Column(
      children: [
        Expanded(
          child: SizedBox(),
        ),
        Own_Textinput_V1(
          width: calc_length_min_max(230, 450, 0.5, _screen_size.width),
          hint_text:
              global_language == Global_Language.eng ? "E-Mail" : "E-Mail",
          on_changed: (value) {
            _e_mail = value;
          },
        ),
        SizedBox(
          height: 15,
        ),
        Own_Textinput_V1(
          width: calc_length_min_max(230, 450, 0.5, _screen_size.width),
          hint_text:
              global_language == Global_Language.eng ? "Password" : "Passwort",
          obscure: true,
          on_changed: (value) {
            _passwort_0 = value;
          },
        ),
        SizedBox(
          height: 5,
        ),
        Own_Textinput_V1(
          width: calc_length_min_max(230, 450, 0.5, _screen_size.width),
          hint_text: global_language == Global_Language.eng
              ? "repeat Password"
              : "Passwort wiederholen",
          obscure: true,
          on_changed: (value) {
            _passwort_1 = value;
          },
        ),
        Expanded(
          child: SizedBox(),
        ),
        /*_loading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(global_color_1))
            : Own_Button_2(
                onPressed: () {
                  //TODO: sign in with google
                },
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/google_g.png"),
                    Text(
                      global_language == Global_Language.eng
                          ? "Sign in with Google"
                          : "Mit Google anmelden",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Colors.black),
                    )
                  ],
                ),
              ),*/
        SizedBox(
          height: 15,
        ),
        _loading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(global_color_1))
            : Own_Button_2(
                onPressed: () async {
                  setState(() {
                    _loading = true;
                  });
                  if (_check_input()) {
                    if (await registerWithEmailPassword(_e_mail, _passwort_0) ==
                        null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          global_language == Global_Language.ger
                              ? "Nutzer konnte nicht erstellt werden. Bitte erneut versuchen."
                              : "User could not be created. Please try again.",
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(milliseconds: 1500),
                      ));
                    } else {
                      // create init user for DB ----
                      Map<String, dynamic> _init_user = {
                        "image_url": null,
                        "image_name": null,
                        "nickname": "Nickname",
                        "points": 0,
                        "ranking": null,
                        "language": global_language == Global_Language.ger
                            ? "german"
                            : "english",
                        "show_in_ranking": true,
                      };
                      var _ret = await Backend_Com().create_user(_init_user);
                      print(_ret);
                      // add data for global_userdata ----
                      _init_user["id"] = _ret;
                      _init_user["verified"] = false;
                      global_userdata = DB_User.fromJson(_init_user);
                      Navigator.of(context).pushNamed(Homepage.route);
                    }
                  }
                  setState(() {
                    _loading = false;
                  });
                },
                text: global_language == Global_Language.eng
                    ? "Register"
                    : "Registrieren",
              ),
        SizedBox(
          height: 73,
        )
      ],
    );
  }
}
