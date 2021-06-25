import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_functions.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_textinput_v1.dart';
import 'package:gg_frontend/pages/register.dart';

class Login extends StatefulWidget {
  static const String route = '/login';
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          on_changed: (value) {},
        ),
        SizedBox(
          height: 15,
        ),
        Own_Textinput_V1(
          width: calc_length_min_max(230, 450, 0.5, _screen_size.width),
          hint_text:
              global_language == Global_Language.eng ? "Password" : "Passwort",
          obscure: true,
          on_changed: (value) {},
        ),
        SizedBox(
          height: 5,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              global_language == Global_Language.eng
                  ? "forgot Password ?"
                  : "Passwort vergessen ?",
              style: TextStyle(
                  color: global_color_3,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            )),
        Expanded(
          child: SizedBox(),
        ),
        Own_Button_2(
          onPressed: () {},
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
        ),
        SizedBox(
          height: 15,
        ),
        Own_Button_2(
          onPressed: () {},
          text: global_language == Global_Language.eng ? "Login" : "Login",
        ),
        SizedBox(
          height: 15,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Register.route);
            },
            child: Text(
              global_language == Global_Language.eng
                  ? "Register"
                  : "Registrieren",
              style: TextStyle(
                  color: global_color_3,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            )),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
