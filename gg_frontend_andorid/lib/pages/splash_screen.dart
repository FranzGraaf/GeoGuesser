import 'package:flutter/material.dart';
import 'package:gg_frontend/pages/homepage.dart';

class Splash_screen extends StatefulWidget {
  static const String route = '/splash_screen';
  const Splash_screen({Key key}) : super(key: key);

  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  void initialise() async {
    await Future.delayed(Duration(milliseconds: 100));
    Navigator.of(context).pushNamed(Homepage.route);
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/Logo_medium.png"),
    );
  }
}
