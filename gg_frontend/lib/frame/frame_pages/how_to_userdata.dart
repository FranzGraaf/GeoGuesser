import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class HowToUserdata extends StatefulWidget {
  static const String route = '/how_to_userdata';
  @override
  _HowToUserdataState createState() => _HowToUserdataState();
}

class _HowToUserdataState extends State<HowToUserdata> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              global_language == Global_Language.eng
                  ? "To delete the user data, please follow the steps below:"
                  : "Um die Nutzerdaten zu löschen befolge bitte folgende Schritte:",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(global_language == Global_Language.eng
                ? "1. log into your profile on this website or in the app."
                : "1. Auf dieser Webseite oder in der App in dein Profil einloggen."),
            Text(global_language == Global_Language.eng
                ? "2. click on the cogwheel to access the settings."
                : "2. Auf das Zahnrad klicken um zu den Einstellungen zu gelangen."),
            Text(global_language == Global_Language.eng
                ? '3. click on "Delete profile" in the settings.'
                : '3. In den Einstellungen auf "Profil Löschen" klicken.'),
            Text(
                global_language == Global_Language.eng ? "\nor\n" : "\noder\n"),
            Text(global_language == Global_Language.eng
                ? "Send an email with your request to xinix.ug@gmail.com. You can also use this method to have only part of your data deleted. Describe in your email which part of your data should be deleted."
                : "Schreibe eine E-Mail mit deinem Anliegen an xinix.ug@gmail.com. Über diesen Weg kannst du auch nur einen Teil deiner Daten löschen lassen. Beschreibe dazu in deiner E-Mail welcher Teil deiner Daten gelöscht werden soll."),
          ],
        ),
      ),
    ));
  }
}
