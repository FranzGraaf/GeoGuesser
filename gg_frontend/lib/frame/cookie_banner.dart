import 'package:flutter/material.dart';
import 'package:cooky/cooky.dart' as cookie;
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Cookie_Banner extends StatefulWidget {
  @override
  _Cookie_BannerState createState() => _Cookie_BannerState();
}

class _Cookie_BannerState extends State<Cookie_Banner> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _after_first_build());
  }

  void _after_first_build() {
    setState(() {
      if (cookie.get("nocookiebanner") != "true") {
        _expanded = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.all(10),
      width: 300,
      height: _expanded ? 101 : 0,
      decoration: BoxDecoration(
          color: global_color_1.withOpacity(0.5),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _expanded ? 1 : 0,
        child: Column(
          children: [
            SizedBox(
              height: 0,
            ),
            Text(
              global_language == Global_Language.ger
                  ? "Wir verwenden ausschließlich technisch notwendige Cookies."
                  : "We only use technically necessary cookies.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: global_color_1, // background
                    onPrimary: Colors.black, // foreground
                  ),
                  onPressed: () {
                    cookie.set("nocookiebanner", "true");
                    setState(() {
                      _expanded = false;
                    });
                  },
                  child: Text(
                      global_language == Global_Language.ger ? "OK" : "OK")),
            ),
            SizedBox(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
