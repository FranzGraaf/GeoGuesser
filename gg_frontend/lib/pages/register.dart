import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_2.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_textinput_v1.dart';

class Register extends StatefulWidget {
  static const String route = '/register';
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
        Own_Textinput_V1(
          hint_text: "repeat Password",
          obscure: true,
        ),
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
          text: "Register",
        ),
        SizedBox(
          height: 73,
        )
      ],
    );
  }
}
