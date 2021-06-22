import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Expanded(
          child: SizedBox(),
        ),
        Own_Textinput_V1(
          hint_text: "E-Mail",
        ),
        SizedBox(
          height: 15,
        ),
        Own_Textinput_V1(
          hint_text: "Password",
          obscure: true,
        ),
        SizedBox(
          height: 5,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "forgot Password ?",
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
                "Sign in with Google",
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
          text: "Login",
        ),
        SizedBox(
          height: 15,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Register.route);
            },
            child: Text(
              "Register",
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
