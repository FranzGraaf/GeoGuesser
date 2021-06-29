import 'package:flutter/material.dart';

class Impressum extends StatefulWidget {
  static const String route = '/impressum';
  @override
  _ImpressumState createState() => _ImpressumState();
}

class _ImpressumState extends State<Impressum> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _text_color = Colors.black;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Impressum",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Angaben gemäß § 5 TMG",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Xinix UG (haftungsbeschränkt)\nHirschstr. 40/1\n74072 Heilbronn",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Handelsregister: HRB 777452\nRegistergericht: Stuttgart",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Vertreten durch:",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Franz Graaf",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Kontakt",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Telefon: (+49)/0 17683417498\nE-Mail: xinix.ug@gmail.com",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Umsatzsteuer-ID",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: DE340438060",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "EU-Streitschlichtung",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit:\nhttps://ec.europa.eu/consumers/odr.\nUnsere E-Mail-Adresse finden Sie oben im Impressum.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Verbraucherstreitbeilegung/Universalschlichtungsstelle",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  "Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer\nVerbraucherschlichtungsstelle teilzunehmen.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Haftung für Inhalte",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  """Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den
allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht
verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu
forschen, die auf eine rechtswidrige Tätigkeit hinweisen.
Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen
Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der
Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden
Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.""",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Haftung für Links",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  """Unser Angebot enthält Links zu externen Websites Dritter, auf deren Inhalte wir keinen Einfluss haben.
Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der
verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten
Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte
waren zum Zeitpunkt der Verlinkung nicht erkennbar.
Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer
Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links
umgehend entfernen.""",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Urheberrecht",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _text_color),
                ),
                Text(
                  """Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen
Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der
Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers.
Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet.
Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter
beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine
Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei
Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.""",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: _text_color),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
