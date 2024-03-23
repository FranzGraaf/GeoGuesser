import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/DB_User.dart';

//
//
//
bool DEVELOPMENT = false;
//
//
//
//

double global_mobile_treshold = 700;
String global_active_route = "/";

enum Usertype { visitor, user }

Usertype global_usertype = Usertype.visitor; // usertype is visitor by default
DB_User global_userdata = DB_User();
int? global_total_players;

StreamController<bool> global_rebuild_controller =
    StreamController<bool>.broadcast();

bool global_show_in_ranking = true;
String global_default_user_image =
    "https://firebasestorage.googleapis.com/v0/b/geoguesser-bccbe.appspot.com/o/Avatar_Bild.png?alt=media&token=70c16373-b633-4bfe-a34b-7d95870f3e21";

// Firebase Storage Bucket Link
final String firebase_bucket_link =
    "gs://geoguesser-bccbe.appspot.com"; // "gs://geoguesser-bccbe.appspot.com"

//Authentication START--------------------------------------------------------------------------
final FirebaseAuth auth_firebase = FirebaseAuth.instance;
//Authentication END--------------------------------------------------------------------------

//Color variables START-----------------------------------------------------------------------
// Schema 1
Color global_color_background_1 = Color.fromRGBO(250, 250, 250, 1);
Color global_color_1 = Color.fromRGBO(16, 158, 0, 1);
Color global_color_2 = Color.fromRGBO(214, 118, 8, 1);
Color global_color_3 = Color.fromRGBO(17, 0, 255, 1);
Color global_color_5_black = Color.fromRGBO(0, 0, 0, 1);
//Color variables END-----------------------------------------------------------------------

//Language variables START-----------------------------------------------------------------------
enum Global_Language { ger, eng }

Global_Language global_language = Global_Language.eng;

StreamController<Global_Language> global_language_streamController =
    StreamController.broadcast();

class Language_Info {
  String name;
  String icon;
  Language_Info({required this.icon, required this.name});
}

final Map<Global_Language, Language_Info> global_language_info = {
  Global_Language.ger:
      Language_Info(name: "German", icon: "assets/countries/ger_100.png"),
  Global_Language.eng:
      Language_Info(name: "English", icon: "assets/countries/uk_100.png"),
};
//Language variables END-----------------------------------------------------------------------

//Theme Mode variables START-----------------------------------------------------------------------
enum Global_Theme_Mode { light, dark }

Global_Theme_Mode global_theme_mode = Global_Theme_Mode.light;

StreamController<Global_Theme_Mode> global_theme_mode_streamController =
    StreamController.broadcast();

class Theme_Mode_Info {
  String name;
  IconData icon;
  Theme_Mode_Info({required this.icon, required this.name});
}

final Map<Global_Theme_Mode, Theme_Mode_Info> global_theme_mode_info = {
  Global_Theme_Mode.light: Theme_Mode_Info(name: "light", icon: Icons.wb_sunny),
  Global_Theme_Mode.dark:
      Theme_Mode_Info(name: "dark", icon: Icons.wb_sunny_outlined),
};
//Theme Mode variables END-----------------------------------------------------------------------

//Point Step variables START-----------------------------------------------------------------------
Map<double, int> global_point_steps = {
  0.5: 999,
  1: 800,
  10: 700,
  20: 650,
  30: 600,
  50: 550,
  100: 500,
  200: 450,
  300: 400,
  400: 350,
  500: 300,
  800: 200,
  1000: 100,
  1300: 80,
  1700: 60,
  2500: 40,
  3000: 20,
  3500: 15,
  4000: 5,
}; // 0-0.5km distance => 999 Points; 0.5-1km distance => 500 Points; ...
//Point Step variables END-----------------------------------------------------------------------

//Location variables START-----------------------------------------------------------------------
List<Location_Variable> global_location_variables = [
  Location_Variable(
      name_de: "Abkhazia - Sukhumi",
      name_en: "Abkhazia - Sukhumi",
      lat: 43.001525,
      lon: 41.023415),
  Location_Variable(
      name_de: "Afghanistan - Kabul",
      name_en: "Afghanistan - Kabul",
      lat: 34.575503,
      lon: 69.240073),
  Location_Variable(
      name_de: "Aland Islands - Mariehamn",
      name_en: "Aland Islands - Mariehamn",
      lat: 60.1,
      lon: 19.933333),
  Location_Variable(
      name_de: "Albania - Tirana",
      name_en: "Albania - Tirana",
      lat: 41.327546,
      lon: 19.818698),
  Location_Variable(
      name_de: "Algeria - Algiers",
      name_en: "Algeria - Algiers",
      lat: 36.752887,
      lon: 3.042048),
  Location_Variable(
      name_de: "American Samoa - Pago Pago",
      name_en: "American Samoa - Pago Pago",
      lat: -14.275632,
      lon: -170.702036),
  Location_Variable(
      name_de: "Andorra - Andorra la Vella",
      name_en: "Andorra - Andorra la Vella",
      lat: 42.506317,
      lon: 1.521835),
  Location_Variable(
      name_de: "Angola - Luanda",
      name_en: "Angola - Luanda",
      lat: -8.839988,
      lon: 13.289437),
  Location_Variable(
      name_de: "Anguilla - The Valley",
      name_en: "Anguilla - The Valley",
      lat: 18.214813,
      lon: -63.057441),
  Location_Variable(
      name_de: "Antarctica - South Pole",
      name_en: "Antarctica - South Pole",
      lat: -90,
      lon: 0),
  Location_Variable(
      name_de: "Antigua and Barbuda - St. John's",
      name_en: "Antigua and Barbuda - St. John's",
      lat: 17.12741,
      lon: -61.846772),
  Location_Variable(
      name_de: "Argentina - Buenos Aires",
      name_en: "Argentina - Buenos Aires",
      lat: -34.603684,
      lon: -58.381559),
  Location_Variable(
      name_de: "Armenia - Yerevan",
      name_en: "Armenia - Yerevan",
      lat: 40.179186,
      lon: 44.499103),
  Location_Variable(
      name_de: "Aruba - Oranjestad",
      name_en: "Aruba - Oranjestad",
      lat: 12.509204,
      lon: -70.008631),
  Location_Variable(
      name_de: "Australia - Canberra",
      name_en: "Australia - Canberra",
      lat: -35.282,
      lon: 149.128684),
  Location_Variable(
      name_de: "Austria - Vienna",
      name_en: "Austria - Vienna",
      lat: 48.208174,
      lon: 16.373819),
  Location_Variable(
      name_de: "Azerbaijan - Baku",
      name_en: "Azerbaijan - Baku",
      lat: 40.409262,
      lon: 49.867092),
  Location_Variable(
      name_de: "Bahamas - Nassau",
      name_en: "Bahamas - Nassau",
      lat: 25.047984,
      lon: -77.355413),
  Location_Variable(
      name_de: "Bahrain - Manama",
      name_en: "Bahrain - Manama",
      lat: 26.228516,
      lon: 50.58605),
  Location_Variable(
      name_de: "Bangladesh - Dhaka",
      name_en: "Bangladesh - Dhaka",
      lat: 23.810332,
      lon: 90.412518),
  Location_Variable(
      name_de: "Barbados - Bridgetown",
      name_en: "Barbados - Bridgetown",
      lat: 13.113222,
      lon: -59.598809),
  Location_Variable(
      name_de: "Belarus - Minsk",
      name_en: "Belarus - Minsk",
      lat: 53.90454,
      lon: 27.561524),
  Location_Variable(
      name_de: "Belgium - Brussels",
      name_en: "Belgium - Brussels",
      lat: 50.85034,
      lon: 4.35171),
  Location_Variable(
      name_de: "Belize - Belmopan",
      name_en: "Belize - Belmopan",
      lat: 17.251011,
      lon: -88.75902),
  Location_Variable(
      name_de: "Benin - Porto-Novo",
      name_en: "Benin - Porto-Novo",
      lat: 6.496857,
      lon: 2.628852),
  Location_Variable(
      name_de: "Bermuda - Hamilton",
      name_en: "Bermuda - Hamilton",
      lat: 32.294816,
      lon: -64.781375),
  Location_Variable(
      name_de: "Bhutan - Thimphu",
      name_en: "Bhutan - Thimphu",
      lat: 27.472792,
      lon: 89.639286),
  Location_Variable(
      name_de: "Bolivia - La Paz",
      name_en: "Bolivia - La Paz",
      lat: -16.489689,
      lon: -68.119294),
  Location_Variable(
      name_de: "Bosnia and Herzegovina - Sarajevo",
      name_en: "Bosnia and Herzegovina - Sarajevo",
      lat: 43.856259,
      lon: 18.413076),
  Location_Variable(
      name_de: "Botswana - Gaborone",
      name_en: "Botswana - Gaborone",
      lat: -24.628208,
      lon: 25.923147),
  Location_Variable(
      name_de: "Bouvet Island - Bouvet Island",
      name_en: "Bouvet Island - Bouvet Island",
      lat: -54.43,
      lon: 3.38),
  Location_Variable(
      name_de: "Brazil - Brasília",
      name_en: "Brazil - Brasília",
      lat: -15.794229,
      lon: -47.882166),
  Location_Variable(
      name_de: "British Indian Ocean Territory - Camp Justice",
      name_en: "British Indian Ocean Territory - Camp Justice",
      lat: 21.3419,
      lon: 55.4778),
  Location_Variable(
      name_de: "British Virgin Islands - Road Town",
      name_en: "British Virgin Islands - Road Town",
      lat: 18.428612,
      lon: -64.618466),
  Location_Variable(
      name_de: "Brunei - Bandar Seri Begawan",
      name_en: "Brunei - Bandar Seri Begawan",
      lat: 4.903052,
      lon: 114.939821),
  Location_Variable(
      name_de: "Bulgaria - Sofia",
      name_en: "Bulgaria - Sofia",
      lat: 42.697708,
      lon: 23.321868),
  Location_Variable(
      name_de: "Burkina Faso - Ouagadougou",
      name_en: "Burkina Faso - Ouagadougou",
      lat: 12.371428,
      lon: -1.51966),
  Location_Variable(
      name_de: "Burundi - Bujumbura",
      name_en: "Burundi - Bujumbura",
      lat: -3.361378,
      lon: 29.359878),
  Location_Variable(
      name_de: "Cambodia - Phnom Penh",
      name_en: "Cambodia - Phnom Penh",
      lat: 11.544873,
      lon: 104.892167),
  Location_Variable(
      name_de: "Cameroon - Yaoundé",
      name_en: "Cameroon - Yaoundé",
      lat: 3.848033,
      lon: 11.502075),
  Location_Variable(
      name_de: "Canada - Ottawa",
      name_en: "Canada - Ottawa",
      lat: 45.42153,
      lon: -75.697193),
  Location_Variable(
      name_de: "Cape Verde - Praia",
      name_en: "Cape Verde - Praia",
      lat: 14.93305,
      lon: -23.513327),
  Location_Variable(
      name_de: "Cayman Islands - George Town",
      name_en: "Cayman Islands - George Town",
      lat: 19.286932,
      lon: -81.367439),
  Location_Variable(
      name_de: "Central African Republic - Bangui",
      name_en: "Central African Republic - Bangui",
      lat: 4.394674,
      lon: 18.55819),
  Location_Variable(
      name_de: "Chad - N'Djamena",
      name_en: "Chad - N'Djamena",
      lat: 12.134846,
      lon: 15.055742),
  Location_Variable(
      name_de: "Chile - Santiago",
      name_en: "Chile - Santiago",
      lat: -33.44889,
      lon: -70.669265),
  Location_Variable(
      name_de: "China - Beijing",
      name_en: "China - Beijing",
      lat: 39.904211,
      lon: 116.407395),
  Location_Variable(
      name_de: "Christmas Island - Flying Fish Cove",
      name_en: "Christmas Island - Flying Fish Cove",
      lat: -10.420686,
      lon: 105.679379),
  Location_Variable(
      name_de: "Cocos (Keeling) Islands - West Island",
      name_en: "Cocos (Keeling) Islands - West Island",
      lat: -12.188834,
      lon: 96.829316),
  Location_Variable(
      name_de: "Colombia - Bogotá",
      name_en: "Colombia - Bogotá",
      lat: 4.710989,
      lon: -74.072092),
  Location_Variable(
      name_de: "Comoros - Moroni",
      name_en: "Comoros - Moroni",
      lat: -11.717216,
      lon: 43.247315),
  Location_Variable(
      name_de: "Congo (DRC) - Kinshasa",
      name_en: "Congo (DRC) - Kinshasa",
      lat: -4.441931,
      lon: 15.266293),
  Location_Variable(
      name_de: "Congo (Republic) - Brazzaville",
      name_en: "Congo (Republic) - Brazzaville",
      lat: -4.26336,
      lon: 15.242885),
  Location_Variable(
      name_de: "Cook Islands - Avarua",
      name_en: "Cook Islands - Avarua",
      lat: -21.212901,
      lon: -159.782306),
  Location_Variable(
      name_de: "Costa Rica - San José",
      name_en: "Costa Rica - San José",
      lat: 9.928069,
      lon: -84.090725),
  Location_Variable(
      name_de: "Côte d'Ivoire - Yamoussoukro",
      name_en: "Côte d'Ivoire - Yamoussoukro",
      lat: 6.827623,
      lon: -5.289343),
  Location_Variable(
      name_de: "Croatia - Zagreb ",
      name_en: "Croatia - Zagreb ",
      lat: 45.815011,
      lon: 15.981919),
  Location_Variable(
      name_de: "Cuba - Havana",
      name_en: "Cuba - Havana",
      lat: 23.05407,
      lon: -82.345189),
  Location_Variable(
      name_de: "Curaçao - Willemstad",
      name_en: "Curaçao - Willemstad",
      lat: 12.122422,
      lon: -68.882423),
  Location_Variable(
      name_de: "Cyprus - Nicosia",
      name_en: "Cyprus - Nicosia",
      lat: 35.185566,
      lon: 33.382276),
  Location_Variable(
      name_de: "Czech Republic - Prague",
      name_en: "Czech Republic - Prague",
      lat: 50.075538,
      lon: 14.4378),
  Location_Variable(
      name_de: "Denmark - Copenhagen",
      name_en: "Denmark - Copenhagen",
      lat: 55.676097,
      lon: 12.568337),
  Location_Variable(
      name_de: "Djibouti - Djibouti",
      name_en: "Djibouti - Djibouti",
      lat: 11.572077,
      lon: 43.145647),
  Location_Variable(
      name_de: "Dominica - Roseau",
      name_en: "Dominica - Roseau",
      lat: 15.309168,
      lon: -61.379355),
  Location_Variable(
      name_de: "Dominican Republic - Santo Domingo",
      name_en: "Dominican Republic - Santo Domingo",
      lat: 18.486058,
      lon: -69.931212),
  Location_Variable(
      name_de: "Ecuador - Quito",
      name_en: "Ecuador - Quito",
      lat: -0.180653,
      lon: -78.467838),
  Location_Variable(
      name_de: "Egypt - Cairo",
      name_en: "Egypt - Cairo",
      lat: 30.04442,
      lon: 31.235712),
  Location_Variable(
      name_de: "El Salvador - San Salvador",
      name_en: "El Salvador - San Salvador",
      lat: 13.69294,
      lon: -89.218191),
  Location_Variable(
      name_de: "Equatorial Guinea - Malabo",
      name_en: "Equatorial Guinea - Malabo",
      lat: 3.750412,
      lon: 8.737104),
  Location_Variable(
      name_de: "Eritrea - Asmara",
      name_en: "Eritrea - Asmara",
      lat: 15.322877,
      lon: 38.925052),
  Location_Variable(
      name_de: "Estonia - Tallinn",
      name_en: "Estonia - Tallinn",
      lat: 59.436961,
      lon: 24.753575),
  Location_Variable(
      name_de: "Ethiopia - Addis Ababa",
      name_en: "Ethiopia - Addis Ababa",
      lat: 8.980603,
      lon: 38.757761),
  Location_Variable(
      name_de: "Falkland Islands (Islas Malvinas) - Stanley",
      name_en: "Falkland Islands (Islas Malvinas) - Stanley",
      lat: -51.697713,
      lon: -57.851663),
  Location_Variable(
      name_de: "Faroe Islands - Tórshavn",
      name_en: "Faroe Islands - Tórshavn",
      lat: 62.007864,
      lon: -6.790982),
  Location_Variable(
      name_de: "Fiji - Suva",
      name_en: "Fiji - Suva",
      lat: -18.124809,
      lon: 178.450079),
  Location_Variable(
      name_de: "Finland - Helsinki",
      name_en: "Finland - Helsinki",
      lat: 60.173324,
      lon: 24.941025),
  Location_Variable(
      name_de: "France - Paris",
      name_en: "France - Paris",
      lat: 48.856614,
      lon: 2.352222),
  Location_Variable(
      name_de: "French Guiana - Cayenne",
      name_en: "French Guiana - Cayenne",
      lat: 4.92242,
      lon: -52.313453),
  Location_Variable(
      name_de: "French Polynesia - Papeete",
      name_en: "French Polynesia - Papeete",
      lat: -17.551625,
      lon: -149.558476),
  Location_Variable(
      name_de: "French Southern Territories - Saint-Pierre ",
      name_en: "French Southern Territories - Saint-Pierre ",
      lat: -21.3419,
      lon: 55.4778),
  Location_Variable(
      name_de: "Gabon - Libreville",
      name_en: "Gabon - Libreville",
      lat: 0.416198,
      lon: 9.467268),
  Location_Variable(
      name_de: "Gambia - Banjul",
      name_en: "Gambia - Banjul",
      lat: 13.454876,
      lon: -16.579032),
  Location_Variable(
      name_de: "Georgia - Tbilisi",
      name_en: "Georgia - Tbilisi",
      lat: 41.715138,
      lon: 44.827096),
  Location_Variable(
      name_de: "Germany - Berlin",
      name_en: "Germany - Berlin",
      lat: 52.520007,
      lon: 13.404954),
  Location_Variable(
      name_de: "Ghana - Accra",
      name_en: "Ghana - Accra",
      lat: 5.603717,
      lon: -0.186964),
  Location_Variable(
      name_de: "Gibraltar - Gibraltar",
      name_en: "Gibraltar - Gibraltar",
      lat: 36.140773,
      lon: -5.353599),
  Location_Variable(
      name_de: "Greece - Athens",
      name_en: "Greece - Athens",
      lat: 37.983917,
      lon: 23.72936),
  Location_Variable(
      name_de: "Greenland - Nuuk",
      name_en: "Greenland - Nuuk",
      lat: 64.18141,
      lon: -51.694138),
  Location_Variable(
      name_de: "Grenada - St. George's",
      name_en: "Grenada - St. George's",
      lat: 12.056098,
      lon: -61.7488),
  Location_Variable(
      name_de: "Guadeloupe - Basse-Terre",
      name_en: "Guadeloupe - Basse-Terre",
      lat: 16.014453,
      lon: -61.706411),
  Location_Variable(
      name_de: "Guam - Hagåtña",
      name_en: "Guam - Hagåtña",
      lat: 13.470891,
      lon: 144.751278),
  Location_Variable(
      name_de: "Guatemala - Guatemala City",
      name_en: "Guatemala - Guatemala City",
      lat: 14.634915,
      lon: -90.506882),
  Location_Variable(
      name_de: "Guernsey - St. Peter Port",
      name_en: "Guernsey - St. Peter Port",
      lat: 49.455443,
      lon: -2.536871),
  Location_Variable(
      name_de: "Guinea - Conakry",
      name_en: "Guinea - Conakry",
      lat: 9.641185,
      lon: -13.578401),
  Location_Variable(
      name_de: "Guinea-Bissau - Bissau",
      name_en: "Guinea-Bissau - Bissau",
      lat: 11.881655,
      lon: -15.617794),
  Location_Variable(
      name_de: "Guyana - Georgetown",
      name_en: "Guyana - Georgetown",
      lat: 6.801279,
      lon: -58.155125),
  Location_Variable(
      name_de: "Haiti - Port-au-Prince",
      name_en: "Haiti - Port-au-Prince",
      lat: 18.594395,
      lon: -72.307433),
  Location_Variable(
      name_de: "Honduras - Tegucigalpa",
      name_en: "Honduras - Tegucigalpa",
      lat: 14.072275,
      lon: -87.192136),
  Location_Variable(
      name_de: "Hong Kong - Hong Kong",
      name_en: "Hong Kong - Hong Kong",
      lat: 22.396428,
      lon: 114.109497),
  Location_Variable(
      name_de: "Hungary - Budapest",
      name_en: "Hungary - Budapest",
      lat: 47.497912,
      lon: 19.040235),
  Location_Variable(
      name_de: "Iceland - Reykjavík",
      name_en: "Iceland - Reykjavík",
      lat: 64.126521,
      lon: -21.817439),
  Location_Variable(
      name_de: "India - New Delhi",
      name_en: "India - New Delhi",
      lat: 28.613939,
      lon: 77.209021),
  Location_Variable(
      name_de: "Indonesia - Jakarta",
      name_en: "Indonesia - Jakarta",
      lat: -6.208763,
      lon: 106.845599),
  Location_Variable(
      name_de: "Iran - Tehran",
      name_en: "Iran - Tehran",
      lat: 35.689198,
      lon: 51.388974),
  Location_Variable(
      name_de: "Iraq - Baghdad",
      name_en: "Iraq - Baghdad",
      lat: 33.312806,
      lon: 44.361488),
  Location_Variable(
      name_de: "Ireland - Dublin",
      name_en: "Ireland - Dublin",
      lat: 53.349805,
      lon: -6.26031),
  Location_Variable(
      name_de: "Isle of Man - Douglas",
      name_en: "Isle of Man - Douglas",
      lat: 54.152337,
      lon: -4.486123),
  Location_Variable(
      name_de: "Israel - Tel Aviv",
      name_en: "Israel - Tel Aviv",
      lat: 32.0853,
      lon: 34.781768),
  Location_Variable(
      name_de: "Italy - Rome",
      name_en: "Italy - Rome",
      lat: 41.902784,
      lon: 12.496366),
  Location_Variable(
      name_de: "Jamaica - Kingston",
      name_en: "Jamaica - Kingston",
      lat: 18.042327,
      lon: -76.802893),
  Location_Variable(
      name_de: "Japan - Tokyo",
      name_en: "Japan - Tokyo",
      lat: 35.709026,
      lon: 139.731992),
  Location_Variable(
      name_de: "Jersey - St. Helier",
      name_en: "Jersey - St. Helier",
      lat: 49.186823,
      lon: -2.106568),
  Location_Variable(
      name_de: "Jordan - Amman",
      name_en: "Jordan - Amman",
      lat: 31.956578,
      lon: 35.945695),
  Location_Variable(
      name_de: "Kazakhstan - Astana",
      name_en: "Kazakhstan - Astana",
      lat: 51.160523,
      lon: 71.470356),
  Location_Variable(
      name_de: "Kenya - Nairobi",
      name_en: "Kenya - Nairobi",
      lat: -1.292066,
      lon: 36.821946),
  Location_Variable(
      name_de: "Kiribati - Tarawa Atoll",
      name_en: "Kiribati - Tarawa Atoll",
      lat: 1.451817,
      lon: 172.971662),
  Location_Variable(
      name_de: "Kosovo - Pristina",
      name_en: "Kosovo - Pristina",
      lat: 42.662914,
      lon: 21.165503),
  Location_Variable(
      name_de: "Kuwait - Kuwait City",
      name_en: "Kuwait - Kuwait City",
      lat: 29.375859,
      lon: 47.977405),
  Location_Variable(
      name_de: "Kyrgyzstan - Bishkek",
      name_en: "Kyrgyzstan - Bishkek",
      lat: 42.874621,
      lon: 74.569762),
  Location_Variable(
      name_de: "Laos - Vientiane",
      name_en: "Laos - Vientiane",
      lat: 17.975706,
      lon: 102.633104),
  Location_Variable(
      name_de: "Latvia - Riga",
      name_en: "Latvia - Riga",
      lat: 56.949649,
      lon: 24.105186),
  Location_Variable(
      name_de: "Lebanon - Beirut",
      name_en: "Lebanon - Beirut",
      lat: 33.888629,
      lon: 35.495479),
  Location_Variable(
      name_de: "Lesotho - Maseru",
      name_en: "Lesotho - Maseru",
      lat: -29.363219,
      lon: 27.51436),
  Location_Variable(
      name_de: "Liberia - Monrovia",
      name_en: "Liberia - Monrovia",
      lat: 6.290743,
      lon: -10.760524),
  Location_Variable(
      name_de: "Libya - Tripoli",
      name_en: "Libya - Tripoli",
      lat: 32.887209,
      lon: 13.191338),
  Location_Variable(
      name_de: "Liechtenstein - Vaduz",
      name_en: "Liechtenstein - Vaduz",
      lat: 47.14103,
      lon: 9.520928),
  Location_Variable(
      name_de: "Lithuania - Vilnius",
      name_en: "Lithuania - Vilnius",
      lat: 54.687156,
      lon: 25.279651),
  Location_Variable(
      name_de: "Luxembourg - Luxembourg",
      name_en: "Luxembourg - Luxembourg",
      lat: 49.611621,
      lon: 6.131935),
  Location_Variable(
      name_de: "Macau - Macau",
      name_en: "Macau - Macau",
      lat: 22.166667,
      lon: 113.55),
  Location_Variable(
      name_de: "Macedonia (FYROM) - Skopje",
      name_en: "Macedonia (FYROM) - Skopje",
      lat: 41.997346,
      lon: 21.427996),
  Location_Variable(
      name_de: "Madagascar - Antananarivo",
      name_en: "Madagascar - Antananarivo",
      lat: -18.87919,
      lon: 47.507905),
  Location_Variable(
      name_de: "Malawi - Lilongwe",
      name_en: "Malawi - Lilongwe",
      lat: -13.962612,
      lon: 33.774119),
  Location_Variable(
      name_de: "Malaysia - Kuala Lumpur",
      name_en: "Malaysia - Kuala Lumpur",
      lat: 3.139003,
      lon: 101.686855),
  Location_Variable(
      name_de: "Maldives - Malé",
      name_en: "Maldives - Malé",
      lat: 4.175496,
      lon: 73.509347),
  Location_Variable(
      name_de: "Mali - Bamako",
      name_en: "Mali - Bamako",
      lat: 12.639232,
      lon: -8.002889),
  Location_Variable(
      name_de: "Malta - Valletta",
      name_en: "Malta - Valletta",
      lat: 35.898909,
      lon: 14.514553),
  Location_Variable(
      name_de: "Marshall Islands - Majuro",
      name_en: "Marshall Islands - Majuro",
      lat: 7.116421,
      lon: 171.185774),
  Location_Variable(
      name_de: "Martinique - Fort-de-France",
      name_en: "Martinique - Fort-de-France",
      lat: 14.616065,
      lon: -61.05878),
  Location_Variable(
      name_de: "Mauritania - Nouakchott",
      name_en: "Mauritania - Nouakchott",
      lat: 18.07353,
      lon: -15.958237),
  Location_Variable(
      name_de: "Mauritius - Port Louis",
      name_en: "Mauritius - Port Louis",
      lat: -20.166896,
      lon: 57.502332),
  Location_Variable(
      name_de: "Mayotte - Mamoudzou",
      name_en: "Mayotte - Mamoudzou",
      lat: -12.780949,
      lon: 45.227872),
  Location_Variable(
      name_de: "Mexico - Mexico City",
      name_en: "Mexico - Mexico City",
      lat: 19.432608,
      lon: -99.133208),
  Location_Variable(
      name_de: "Micronesia - Palikir",
      name_en: "Micronesia - Palikir",
      lat: 6.914712,
      lon: 158.161027),
  Location_Variable(
      name_de: "Moldova - Chisinau",
      name_en: "Moldova - Chisinau",
      lat: 47.010453,
      lon: 28.86381),
  Location_Variable(
      name_de: "Monaco - Monaco",
      name_en: "Monaco - Monaco",
      lat: 43.737411,
      lon: 7.420816),
  Location_Variable(
      name_de: "Mongolia - Ulaanbaatar",
      name_en: "Mongolia - Ulaanbaatar",
      lat: 47.886399,
      lon: 106.905744),
  Location_Variable(
      name_de: "Montenegro - Podgorica",
      name_en: "Montenegro - Podgorica",
      lat: 42.43042,
      lon: 19.259364),
  Location_Variable(
      name_de: "Montserrat - Plymouth",
      name_en: "Montserrat - Plymouth",
      lat: 16.706523,
      lon: -62.215738),
  Location_Variable(
      name_de: "Morocco - Rabat",
      name_en: "Morocco - Rabat",
      lat: 33.97159,
      lon: -6.849813),
  Location_Variable(
      name_de: "Mozambique - Maputo",
      name_en: "Mozambique - Maputo",
      lat: -25.891968,
      lon: 32.605135),
  Location_Variable(
      name_de: "Myanmar (Burma) - Naypyidaw",
      name_en: "Myanmar (Burma) - Naypyidaw",
      lat: 19.763306,
      lon: 96.07851),
  Location_Variable(
      name_de: "Nagorno-Karabakh Republic - Stepanakert",
      name_en: "Nagorno-Karabakh Republic - Stepanakert",
      lat: 39.826385,
      lon: 46.763595),
  Location_Variable(
      name_de: "Namibia - Windhoek",
      name_en: "Namibia - Windhoek",
      lat: -22.560881,
      lon: 17.065755),
  Location_Variable(
      name_de: "Nauru - Yaren",
      name_en: "Nauru - Yaren",
      lat: -0.546686,
      lon: 166.921091),
  Location_Variable(
      name_de: "Nepal - Kathmandu",
      name_en: "Nepal - Kathmandu",
      lat: 27.717245,
      lon: 85.323961),
  Location_Variable(
      name_de: "Netherlands - Amsterdam",
      name_en: "Netherlands - Amsterdam",
      lat: 52.370216,
      lon: 4.895168),
  Location_Variable(
      name_de: "Netherlands Antilles - Willemstad ",
      name_en: "Netherlands Antilles - Willemstad ",
      lat: 12.1091242,
      lon: -68.9316546),
  Location_Variable(
      name_de: "New Caledonia - Nouméa",
      name_en: "New Caledonia - Nouméa",
      lat: -22.255823,
      lon: 166.450524),
  Location_Variable(
      name_de: "New Zealand - Wellington",
      name_en: "New Zealand - Wellington",
      lat: -41.28646,
      lon: 174.776236),
  Location_Variable(
      name_de: "Nicaragua - Managua",
      name_en: "Nicaragua - Managua",
      lat: 12.114993,
      lon: -86.236174),
  Location_Variable(
      name_de: "Niger - Niamey",
      name_en: "Niger - Niamey",
      lat: 13.511596,
      lon: 2.125385),
  Location_Variable(
      name_de: "Nigeria - Abuja",
      name_en: "Nigeria - Abuja",
      lat: 9.076479,
      lon: 7.398574),
  Location_Variable(
      name_de: "Niue - Alofi",
      name_en: "Niue - Alofi",
      lat: -19.055371,
      lon: -169.917871),
  Location_Variable(
      name_de: "Norfolk Island - Kingston",
      name_en: "Norfolk Island - Kingston",
      lat: -29.056394,
      lon: 167.959588),
  Location_Variable(
      name_de: "North Korea - Pyongyang",
      name_en: "North Korea - Pyongyang",
      lat: 39.039219,
      lon: 125.762524),
  Location_Variable(
      name_de: "Northern Cyprus - Nicosia",
      name_en: "Northern Cyprus - Nicosia",
      lat: 35.185566,
      lon: 33.382276),
  Location_Variable(
      name_de: "Northern Mariana Islands - Saipan",
      name_en: "Northern Mariana Islands - Saipan",
      lat: 15.177801,
      lon: 145.750967),
  Location_Variable(
      name_de: "Norway - Oslo",
      name_en: "Norway - Oslo",
      lat: 59.913869,
      lon: 10.752245),
  Location_Variable(
      name_de: "Oman - Muscat",
      name_en: "Oman - Muscat",
      lat: 23.58589,
      lon: 58.405923),
  Location_Variable(
      name_de: "Pakistan - Islamabad",
      name_en: "Pakistan - Islamabad",
      lat: 33.729388,
      lon: 73.093146),
  Location_Variable(
      name_de: "Palau - Ngerulmud",
      name_en: "Palau - Ngerulmud",
      lat: 7.500384,
      lon: 134.624289),
  Location_Variable(
      name_de: "Palestine - Ramallah",
      name_en: "Palestine - Ramallah",
      lat: 31.9073509,
      lon: 35.5354719),
  Location_Variable(
      name_de: "Panama - Panama City",
      name_en: "Panama - Panama City",
      lat: 9.101179,
      lon: -79.402864),
  Location_Variable(
      name_de: "Papua New Guinea - Port Moresby",
      name_en: "Papua New Guinea - Port Moresby",
      lat: -9.4438,
      lon: 147.180267),
  Location_Variable(
      name_de: "Paraguay - Asuncion",
      name_en: "Paraguay - Asuncion",
      lat: -25.26374,
      lon: -57.575926),
  Location_Variable(
      name_de: "Peru - Lima",
      name_en: "Peru - Lima",
      lat: -12.046374,
      lon: -77.042793),
  Location_Variable(
      name_de: "Philippines - Manila",
      name_en: "Philippines - Manila",
      lat: 14.599512,
      lon: 120.98422),
  Location_Variable(
      name_de: "Pitcairn Islands - Adamstown",
      name_en: "Pitcairn Islands - Adamstown",
      lat: -25.06629,
      lon: -130.100464),
  Location_Variable(
      name_de: "Poland - Warsaw",
      name_en: "Poland - Warsaw",
      lat: 52.229676,
      lon: 21.012229),
  Location_Variable(
      name_de: "Portugal - Lisbon",
      name_en: "Portugal - Lisbon",
      lat: 38.722252,
      lon: -9.139337),
  Location_Variable(
      name_de: "Puerto Rico - San Juan",
      name_en: "Puerto Rico - San Juan",
      lat: 18.466334,
      lon: -66.105722),
  Location_Variable(
      name_de: "Qatar - Doha",
      name_en: "Qatar - Doha",
      lat: 25.285447,
      lon: 51.53104),
  Location_Variable(
      name_de: "Réunion - Saint-Denis",
      name_en: "Réunion - Saint-Denis",
      lat: -20.882057,
      lon: 55.450675),
  Location_Variable(
      name_de: "Romania - Bucharest",
      name_en: "Romania - Bucharest",
      lat: 44.426767,
      lon: 26.102538),
  Location_Variable(
      name_de: "Russia - Moscow",
      name_en: "Russia - Moscow",
      lat: 55.755826,
      lon: 37.6173),
  Location_Variable(
      name_de: "Rwanda - Kigali",
      name_en: "Rwanda - Kigali",
      lat: -1.957875,
      lon: 30.112735),
  Location_Variable(
      name_de: "Saint Pierre and Miquelon - St. Pierre",
      name_en: "Saint Pierre and Miquelon - St. Pierre",
      lat: 46.775846,
      lon: -56.180636),
  Location_Variable(
      name_de: "Saint Vincent and the Grenadines - Kingstown",
      name_en: "Saint Vincent and the Grenadines - Kingstown",
      lat: 13.160025,
      lon: -61.224816),
  Location_Variable(
      name_de: "Samoa - Apia",
      name_en: "Samoa - Apia",
      lat: -13.850696,
      lon: -171.751355),
  Location_Variable(
      name_de: "San Marino - San Marino",
      name_en: "San Marino - San Marino",
      lat: 43.935591,
      lon: 12.447281),
  Location_Variable(
      name_de: "São Tomé and Príncipe - São Tomé",
      name_en: "São Tomé and Príncipe - São Tomé",
      lat: 0.330192,
      lon: 6.733343),
  Location_Variable(
      name_de: "Saudi Arabia - Riyadh",
      name_en: "Saudi Arabia - Riyadh",
      lat: 24.749403,
      lon: 46.902838),
  Location_Variable(
      name_de: "Senegal - Dakar",
      name_en: "Senegal - Dakar",
      lat: 14.764504,
      lon: -17.366029),
  Location_Variable(
      name_de: "Serbia - Belgrade",
      name_en: "Serbia - Belgrade",
      lat: 44.786568,
      lon: 20.448922),
  Location_Variable(
      name_de: "Seychelles - Victoria",
      name_en: "Seychelles - Victoria",
      lat: -4.619143,
      lon: 55.451315),
  Location_Variable(
      name_de: "Sierra Leone - Freetown",
      name_en: "Sierra Leone - Freetown",
      lat: 8.465677,
      lon: -13.231722),
  Location_Variable(
      name_de: "Singapore - Singapore",
      name_en: "Singapore - Singapore",
      lat: 1.280095,
      lon: 103.850949),
  Location_Variable(
      name_de: "Slovakia - Bratislava",
      name_en: "Slovakia - Bratislava",
      lat: 48.145892,
      lon: 17.107137),
  Location_Variable(
      name_de: "Slovenia - Ljubljana",
      name_en: "Slovenia - Ljubljana",
      lat: 46.056947,
      lon: 14.505751),
  Location_Variable(
      name_de: "Solomon Islands - Honiara",
      name_en: "Solomon Islands - Honiara",
      lat: -9.445638,
      lon: 159.9729),
  Location_Variable(
      name_de: "Somalia - Mogadishu",
      name_en: "Somalia - Mogadishu",
      lat: 2.046934,
      lon: 45.318162),
  Location_Variable(
      name_de: "South Africa - Pretoria",
      name_en: "South Africa - Pretoria",
      lat: -25.747868,
      lon: 28.229271),
  Location_Variable(
      name_de:
          "South Georgia and the South Sandwich Islands - King Edward Point",
      name_en:
          "South Georgia and the South Sandwich Islands - King Edward Point",
      lat: -54.28325,
      lon: -36.493735),
  Location_Variable(
      name_de: "South Korea - Seoul",
      name_en: "South Korea - Seoul",
      lat: 37.566535,
      lon: 126.977969),
  Location_Variable(
      name_de: "South Ossetia - Tskhinvali",
      name_en: "South Ossetia - Tskhinvali",
      lat: 42.22146,
      lon: 43.964405),
  Location_Variable(
      name_de: "South Sudan - Juba",
      name_en: "South Sudan - Juba",
      lat: 4.859363,
      lon: 31.57125),
  Location_Variable(
      name_de: "Spain - Madrid",
      name_en: "Spain - Madrid",
      lat: 40.416775,
      lon: -3.70379),
  Location_Variable(
      name_de: "Sri Lanka - Sri Jayawardenepura Kotte",
      name_en: "Sri Lanka - Sri Jayawardenepura Kotte",
      lat: 6.89407,
      lon: 79.902478),
  Location_Variable(
      name_de: "St. Barthélemy - Gustavia",
      name_en: "St. Barthélemy - Gustavia",
      lat: 17.896435,
      lon: -62.852201),
  Location_Variable(
      name_de: "St. Kitts and Nevis - Basseterre",
      name_en: "St. Kitts and Nevis - Basseterre",
      lat: 17.302606,
      lon: -62.717692),
  Location_Variable(
      name_de: "St. Lucia - Castries",
      name_en: "St. Lucia - Castries",
      lat: 14.010109,
      lon: -60.987469),
  Location_Variable(
      name_de: "St. Martin - Marigot",
      name_en: "St. Martin - Marigot",
      lat: 18.067519,
      lon: -63.082466),
  Location_Variable(
      name_de: "Sudan - Khartoum",
      name_en: "Sudan - Khartoum",
      lat: 15.500654,
      lon: 32.559899),
  Location_Variable(
      name_de: "Suriname - Paramaribo",
      name_en: "Suriname - Paramaribo",
      lat: 5.852036,
      lon: -55.203828),
  Location_Variable(
      name_de: "Svalbard and Jan Mayen - Longyearbyen ",
      name_en: "Svalbard and Jan Mayen - Longyearbyen ",
      lat: 78.062,
      lon: 22.055),
  Location_Variable(
      name_de: "Swaziland - Mbabane",
      name_en: "Swaziland - Mbabane",
      lat: -26.305448,
      lon: 31.136672),
  Location_Variable(
      name_de: "Sweden - Stockholm",
      name_en: "Sweden - Stockholm",
      lat: 59.329323,
      lon: 18.068581),
  Location_Variable(
      name_de: "Switzerland - Bern",
      name_en: "Switzerland - Bern",
      lat: 46.947974,
      lon: 7.447447),
  Location_Variable(
      name_de: "Syria - Damascus",
      name_en: "Syria - Damascus",
      lat: 33.513807,
      lon: 36.276528),
  Location_Variable(
      name_de: "Taiwan - Taipei",
      name_en: "Taiwan - Taipei",
      lat: 25.032969,
      lon: 121.565418),
  Location_Variable(
      name_de: "Tajikistan - Dushanbe",
      name_en: "Tajikistan - Dushanbe",
      lat: 38.559772,
      lon: 68.787038),
  Location_Variable(
      name_de: "Tanzania - Dodoma",
      name_en: "Tanzania - Dodoma",
      lat: -6.162959,
      lon: 35.751607),
  Location_Variable(
      name_de: "Thailand - Bangkok",
      name_en: "Thailand - Bangkok",
      lat: 13.756331,
      lon: 100.501765),
  Location_Variable(
      name_de: "Timor-Leste - Dili",
      name_en: "Timor-Leste - Dili",
      lat: -8.556856,
      lon: 125.560314),
  Location_Variable(
      name_de: "Togo - Lomé",
      name_en: "Togo - Lomé",
      lat: 6.172497,
      lon: 1.231362),
  Location_Variable(
      name_de: "Tokelau - Nukunonu",
      name_en: "Tokelau - Nukunonu",
      lat: -9.2005,
      lon: -171.848),
  Location_Variable(
      name_de: "Tonga - Nukuʻalofa",
      name_en: "Tonga - Nukuʻalofa",
      lat: -21.139342,
      lon: -175.204947),
  Location_Variable(
      name_de: "Transnistria - Tiraspol",
      name_en: "Transnistria - Tiraspol",
      lat: 46.848185,
      lon: 29.596805),
  Location_Variable(
      name_de: "Trinidad and Tobago - Port of Spain",
      name_en: "Trinidad and Tobago - Port of Spain",
      lat: 10.654901,
      lon: -61.501926),
  Location_Variable(
      name_de: "Tristan da Cunha - Edinburgh of the Seven Seas",
      name_en: "Tristan da Cunha - Edinburgh of the Seven Seas",
      lat: -37.068042,
      lon: -12.311315),
  Location_Variable(
      name_de: "Tunisia - Tunis",
      name_en: "Tunisia - Tunis",
      lat: 36.806495,
      lon: 10.181532),
  Location_Variable(
      name_de: "Turkey - Ankara",
      name_en: "Turkey - Ankara",
      lat: 39.933364,
      lon: 32.859742),
  Location_Variable(
      name_de: "Turkmenistan - Ashgabat",
      name_en: "Turkmenistan - Ashgabat",
      lat: 37.960077,
      lon: 58.326063),
  Location_Variable(
      name_de: "Turks and Caicos Islands - Cockburn Town",
      name_en: "Turks and Caicos Islands - Cockburn Town",
      lat: 21.467458,
      lon: -71.13891),
  Location_Variable(
      name_de: "Tuvalu - Funafuti",
      name_en: "Tuvalu - Funafuti",
      lat: -8.520066,
      lon: 179.198128),
  Location_Variable(
      name_de: "U.S. Virgin Islands - Charlotte Amalie",
      name_en: "U.S. Virgin Islands - Charlotte Amalie",
      lat: 18.3419,
      lon: -64.930701),
  Location_Variable(
      name_de: "Uganda - Kampala",
      name_en: "Uganda - Kampala",
      lat: 0.347596,
      lon: 32.58252),
  Location_Variable(
      name_de: "Ukraine - Kiev",
      name_en: "Ukraine - Kiev",
      lat: 50.4501,
      lon: 30.5234),
  Location_Variable(
      name_de: "United Arab Emirates - Abu Dhabi",
      name_en: "United Arab Emirates - Abu Dhabi",
      lat: 24.299174,
      lon: 54.697277),
  Location_Variable(
      name_de: "United Kingdom - London",
      name_en: "United Kingdom - London",
      lat: 51.507351,
      lon: -0.127758),
  Location_Variable(
      name_de: "United States - Washington",
      name_en: "United States - Washington",
      lat: 38.907192,
      lon: -77.036871),
  Location_Variable(
      name_de: "Uruguay - Montevideo",
      name_en: "Uruguay - Montevideo",
      lat: -34.901113,
      lon: -56.164531),
  Location_Variable(
      name_de: "Uzbekistan - Tashkent",
      name_en: "Uzbekistan - Tashkent",
      lat: 41.299496,
      lon: 69.240073),
  Location_Variable(
      name_de: "Vanuatu - Port Vila",
      name_en: "Vanuatu - Port Vila",
      lat: -17.733251,
      lon: 168.327325),
  Location_Variable(
      name_de: "Vatican City - Vatican City",
      name_en: "Vatican City - Vatican City",
      lat: 41.902179,
      lon: 12.453601),
  Location_Variable(
      name_de: "Venezuela - Caracas",
      name_en: "Venezuela - Caracas",
      lat: 10.480594,
      lon: -66.903606),
  Location_Variable(
      name_de: "Vietnam - Hanoi",
      name_en: "Vietnam - Hanoi",
      lat: 21.027764,
      lon: 105.83416),
  Location_Variable(
      name_de: "Wallis and Futuna - Mata-Utu",
      name_en: "Wallis and Futuna - Mata-Utu",
      lat: -13.282509,
      lon: -176.176447),
  Location_Variable(
      name_de: "Western Sahara - El Aaiún",
      name_en: "Western Sahara - El Aaiún",
      lat: 27.125287,
      lon: -13.1625),
  Location_Variable(
      name_de: "Yemen - Sana'a",
      name_en: "Yemen - Sana'a",
      lat: 15.369445,
      lon: 44.191007),
  Location_Variable(
      name_de: "Zambia - Lusaka",
      name_en: "Zambia - Lusaka",
      lat: -15.387526,
      lon: 28.322817),
  Location_Variable(
      name_de: "Zimbabwe - Harare",
      name_en: "Zimbabwe - Harare",
      lat: -17.825166,
      lon: 31.03351),
];

class Location_Variable {
  String name_de;
  String name_en;
  double lon;
  double lat;
  Location_Variable(
      {required this.name_de,
      required this.name_en,
      required this.lon,
      required this.lat});
}
//Location variables END-----------------------------------------------------------------------

