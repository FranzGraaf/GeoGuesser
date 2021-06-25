import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_button_3.dart';
import 'package:gg_frontend/global_stuff/own_widgets/own_submittable_text_input.dart';

class Profile extends StatefulWidget {
  static const String route = '/profile';
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _name_controller = TextEditingController();
  List<Map<String, dynamic>> _ranking_list = [
    {"number": 40, "name": "Tom", "points": 780},
    {"number": 41, "name": "Tom", "points": 777},
    {"number": 42, "name": "Tom", "points": 775},
    {"number": 43, "name": "Tom", "points": 773},
    {"number": 44, "name": "Tom", "points": 772},
    {"number": 45, "name": "Tom", "points": 771},
    {"number": 46, "name": "Tom", "points": 770},
    {"number": 47, "name": "Tom", "points": 756},
    {"number": 48, "name": "Tom", "points": 755},
    {"number": 49, "name": "Tom", "points": 753},
  ];

  @override
  void initState() {
    _name_controller.text = global_userdata.nickname ?? "-";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          ClipOval(
              child: Image.network(
            global_userdata.image_url ?? global_default_user_image,
            width: 200,
            height: 200,
          )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: Own_Submittable_Text_Input(
              _name_controller,
              max_lines: 1,
              on_changed: (value) {},
              submitted: (value) {},
              aborted: () {},
              text_style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            height: 2,
            width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                (runtimeType == Global_Language.eng ? "RANK: " : "RANG: ") +
                    (global_userdata.ranking ?? "-").toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Text(
                " / " + (global_total_players ?? "-").toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Own_Button_3(
                onPressed: () {},
                text: global_language == Global_Language.eng ? "1st" : "1.",
              ),
              SizedBox(
                width: 10,
              ),
              Own_Button_3(
                onPressed: () {},
                text: (global_userdata.ranking ?? "-").toString() +
                    (global_language == Global_Language.eng
                        ? ". (you)"
                        : ". (du)"),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          for (Map<String, dynamic> i in _ranking_list)
            Profile_Element(
              number: i["number"],
              name: i["name"],
              points: i["points"],
            ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            height: 2,
            width: 300,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class Profile_Element extends StatefulWidget {
  int number;
  String name;
  int points;
  Profile_Element({Key key, this.name, this.number, this.points})
      : super(key: key);

  @override
  _Profile_ElementState createState() => _Profile_ElementState();
}

class _Profile_ElementState extends State<Profile_Element> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.only(top: 2, bottom: 2),
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: global_color_1)),
      child: Row(
        children: [
          Text(
            widget.number.toString() + ". " + widget.name,
            style: TextStyle(
                color: global_color_1,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Expanded(child: SizedBox()),
          Text(
            "P: " + widget.points.toString(),
            style: TextStyle(
                color: global_color_1,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ],
      ),
    );
  }
}
