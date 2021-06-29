import 'package:flutter/material.dart';

class Datenschutz extends StatefulWidget {
  static const String route = '/datenschutz';
  @override
  _DatenschutzState createState() => _DatenschutzState();
}

class _DatenschutzState extends State<Datenschutz> {
  @override
  Widget build(BuildContext context) {
    return /*Container(
        child: HtmlElementView(key: UniqueKey(), viewType: 'datenschutz-html'));*/
        SingleChildScrollView(
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
                  "Datenschutzerklärung",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                /*Text(
                  "§1 Geltung gegenüber Unternehmern und Begriffsdefinitionen",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(
                  """(1) Die nachfolgenden Allgemeinen Geschäftbedingungen gelten für alle Lieferungen zwischen uns und einem Verbraucher in ihrer zum Zeitpunkt der Bestellung gültigen Fassung.

Verbraucher ist jede natürliche Person, die ein Rechtsgeschäft zu Zwecken abschließt, die überwiegend weder ihrer gewerblichen noch ihrer selbständigen beruflichen Tätigkeit zugerechnet werden können (§ 13 BGB).""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                */
                Text(
                  """Kontaktdaten des Verantwortlichen
Sollten Sie Fragen zum Datenschutz haben, finden Sie nachfolgend die Kontaktdaten der verantwortlichen Person bzw. Stelle.

Xinix UG (haftugsbeschränkt)
Hirschstr 40/1
74078, Heilbronn

Vertretungsberechtigt: Franz Graaf

E-Mail: xinix.ug@gmail.com
Impressum: https://fellowcoder.org/impressum


Datenübertragung in Drittländer
Wir übertragen oder verarbeiten Daten nur dann in Länder außerhalb der EU (Drittländer), wenn Sie dieser Verarbeitung zustimmen, dies gesetzlich vorgeschrieben ist oder vertraglich notwendig und in jedem Fall nur soweit dies generell erlaubt ist. Ihre Zustimmung ist in den meisten Fällen der wichtigste Grund, dass wir Daten in Drittländern verarbeiten lassen. Die Verarbeitung personenbezogener Daten in Drittländern wie den USA, wo viele Softwarehersteller Dienstleistungen anbieten und Ihre Serverstandorte haben, kann bedeuten, dass personenbezogene Daten auf unerwartete Weise verarbeitet und gespeichert werden. Nach Möglichkeit versuchen wir Serverstandorte innerhalb der EU zu nutzen, sofern das angeboten wird.

Wir informieren Sie an den passenden Stellen dieser Datenschutzerklärung genauer über Datenübertragung in Drittländer, sofern diese zutrifft.

Sicherheit der Datenverarbeitung
Um personenbezogene Daten zu schützen, haben wir sowohl technische als auch organisatorische Maßnahmen umgesetzt. Wo es uns möglich ist, verschlüsseln oder pseudonymisieren wir personenbezogene Daten. Dadurch machen wir es im Rahmen unserer Möglichkeiten so schwer wie möglich, dass Dritte aus unseren Daten auf persönliche Informationen schließen können.

Art. 25 DSGVO spricht hier von “Datenschutz durch Technikgestaltung und durch datenschutzfreundliche Voreinstellungen” und meint damit, dass man sowohl bei Software (z. B. Formularen) also auch Hardware (z. B. Zugang zum Serverraum) immer an Sicherheit denkt und entsprechende Maßnahmen setzt. Im Folgenden gehen wir, falls erforderlich, noch auf konkrete Maßnahmen ein.

Einleitung und Überblick
Wir haben diese Datenschutzerklärung (Fassung 31.05.2021-311284247) verfasst, um Ihnen gemäß der Vorgaben der Datenschutz-Grundverordnung (EU) 2016/679 und anwendbaren nationalen Gesetzen zu erklären, welche personenbezogenen Daten (kurz Daten) wir als Verantwortliche – und die von uns beauftragten Auftragsverarbeiter (z. B. Provider) – verarbeiten, zukünftig verarbeiten werden und welche rechtmäßigen Möglichkeiten Sie haben. Die verwendeten Begriffe sind geschlechtsneutral zu verstehen.
Kurz gesagt: Wir informieren Sie umfassend über Daten, die wir über Sie verarbeiten.

Datenschutzerklärungen klingen für gewöhnlich sehr technisch und verwenden juristische Fachbegriffe. Diese Datenschutzerklärung soll Ihnen hingegen die wichtigsten Dinge so einfach und transparent wie möglich beschreiben. Soweit es der Transparenz förderlich ist, werden technische Begriffe leserfreundlich erklärt, Links zu weiterführenden Informationen geboten und Grafiken zum Einsatz gebracht. Wir informieren damit in klarer und einfacher Sprache, dass wir im Rahmen unserer Geschäftstätigkeiten nur dann personenbezogene Daten verarbeiten, wenn eine entsprechende gesetzliche Grundlage gegeben ist. Das ist sicher nicht möglich, wenn man möglichst knappe, unklare und juristisch-technische Erklärungen abgibt, so wie sie im Internet oft Standard sind, wenn es um Datenschutz geht. Ich hoffe Sie finden die folgenden Erläuterungen interessant und informativ und vielleicht ist die eine oder andere Information dabei, die Sie noch nicht kannten.
Wenn trotzdem Fragen bleiben, möchten wir Sie bitten, sich an die unten bzw. im Impressum genannte verantwortliche Stelle zu wenden, den vorhandenen Links zu folgen und sich weitere Informationen auf Drittseiten anzusehen. Unsere Kontaktdaten finden Sie selbstverständlich auch im Impressum.

Rechtsgrundlagen
In der folgenden Datenschutzerklärung geben wir Ihnen transparente Informationen zu den rechtlichen Grundsätzen und Vorschriften, also den Rechtsgrundlagen der Datenschutz-Grundverordnung, die uns ermöglichen, personenbezogene Daten zu verarbeiten.
Was das EU-Recht betrifft, beziehen wir uns auf die VERORDNUNG (EU) 2016/679 DES EUROPÄISCHEN PARLAMENTS UND DES RATES vom 27. April 2016. Diese Datenschutz-Grundverordnung der EU können Sie selbstverständlich online auf EUR-Lex, dem Zugang zum EU-Recht, unter https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=celex%3A32016R0679 nachlesen.

Wir verarbeiten Ihre Daten nur, wenn mindestens eine der folgenden Bedingungen zutrifft:

Einwilligung (Artikel 6 Absatz 1 lit. a DSGVO): Sie haben uns Ihre Einwilligung gegeben, Daten zu einem bestimmten Zweck zu verarbeiten. Ein Beispiel wäre die Speicherung Ihrer eingegebenen Daten eines Kontaktformulars.
Vertrag (Artikel 6 Absatz 1 lit. b DSGVO): Um einen Vertrag oder vorvertragliche Verpflichtungen mit Ihnen zu erfüllen, verarbeiten wir Ihre Daten. Wenn wir zum Beispiel einen Kaufvertrag mit Ihnen abschließen, benötigen wir vorab personenbezogene Informationen.
Rechtliche Verpflichtung (Artikel 6 Absatz 1 lit. c DSGVO): Wenn wir einer rechtlichen Verpflichtung unterliegen, verarbeiten wir Ihre Daten. Zum Beispiel sind wir gesetzlich verpflichtet Rechnungen für die Buchhaltung aufzuheben. Diese enthalten in der Regel personenbezogene Daten.
Berechtigte Interessen (Artikel 6 Absatz 1 lit. f DSGVO): Im Falle berechtigter Interessen, die Ihre Grundrechte nicht einschränken, behalten wir uns die Verarbeitung personenbezogener Daten vor. Wir müssen zum Beispiel gewisse Daten verarbeiten, um unsere Website sicher und wirtschaftlich effizient betreiben zu können. Diese Verarbeitung ist somit ein berechtigtes Interesse.
Weitere Bedingungen wie die Wahrnehmung von Aufnahmen im öffentlichen Interesse und Ausübung öffentlicher Gewalt sowie dem Schutz lebenswichtiger Interessen treten bei uns in der Regel nicht auf. Soweit eine solche Rechtsgrundlage doch einschlägig sein sollte, wird diese an der entsprechenden Stelle ausgewiesen.

Zusätzlich zu der EU-Verordnung gelten auch noch nationale Gesetze:

In Österreich ist dies das Bundesgesetz zum Schutz natürlicher Personen bei der Verarbeitung personenbezogener Daten (Datenschutzgesetz), kurz DSG.
In Deutschland gilt das Bundesdatenschutzgesetz, kurz BDSG.
Sofern weitere regionale oder nationale Gesetze zur Anwendung kommen, informieren wir Sie in den folgenden Abschnitten darüber.

Rechte laut Datenschutzgrundverordnung
Laut Artikel 13 DSGVO stehen Ihnen die folgenden Rechte zu, damit es zu einer fairen und transparenten Verarbeitung von Daten kommt:

Sie haben laut Artikel 15 DSGVO ein Auskunftsrecht darüber, ob wir Daten von Ihnen verarbeiten. Sollte das zutreffen, haben Sie Recht darauf eine Kopie der Daten zu erhalten und die folgenden Informationen zu erfahren:
zu welchem Zweck wir die Verarbeitung durchführen;
die Kategorien, also die Arten von Daten, die verarbeitet werden;
wer diese Daten erhält und wenn die Daten an Drittländer übermittelt werden, wie die Sicherheit garantiert werden kann;
wie lange die Daten gespeichert werden;
das Bestehen des Rechts auf Berichtigung, Löschung oder Einschränkung der Verarbeitung und dem Widerspruchsrecht gegen die Verarbeitung;
dass Sie sich bei einer Aufsichtsbehörde beschweren können (Links zu diesen Behörden finden Sie weiter unten);
die Herkunft der Daten, wenn wir sie nicht bei Ihnen erhoben haben;
ob Profiling durchgeführt wird, ob also Daten automatisch ausgewertet werden, um zu einem persönlichen Profil von Ihnen zu gelangen.
Sie haben laut Artikel 16 DSGVO ein Recht auf Berichtigung der Daten, was bedeutet, dass wir Daten richtig stellen müssen, falls Sie Fehler finden.
Sie haben laut Artikel 17 DSGVO das Recht auf Löschung („Recht auf Vergessenwerden“), was konkret bedeutet, dass Sie die Löschung Ihrer Daten verlangen dürfen.
Sie haben laut Artikel 18 DSGVO das Recht auf Einschränkung der Verarbeitung, was bedeutet, dass wir die Daten nur mehr speichern dürfen aber nicht weiter verwenden.
Sie haben laut Artikel 19 DSGVO das Recht auf Datenübertragbarkeit, was bedeutet, dass wir Ihnen auf Anfrage Ihre Daten in einem gängigen Format zur Verfügung stellen.
Sie haben laut Artikel 21 DSGVO ein Widerspruchsrecht, welches nach Durchsetzung eine Änderung der Verarbeitung mit sich bringt.
Wenn die Verarbeitung Ihrer Daten auf Artikel 6 Abs. 1 lit. e (öffentliches Interesse, Ausübung öffentlicher Gewalt) oder Artikel 6 Abs. 1 lit. f (berechtigtes Interesse) basiert, können Sie gegen die Verarbeitung Widerspruch einlegen. Wir prüfen danach so rasch wie möglich, ob wir diesem Widerspruch rechtlich nachkommen können.
Werden Daten verwendet, um Direktwerbung zu betreiben, können Sie jederzeit gegen diese Art der Datenverarbeitung widersprechen. Wir dürfen Ihre Daten danach nicht mehr für Direktmarketing verwenden.
Werden Daten verwendet, um Profiling zu betreiben, können Sie jederzeit gegen diese Art der Datenverarbeitung widersprechen. Wir dürfen Ihre Daten danach nicht mehr für Profiling verwenden.
Sie haben laut Artikel 22 DSGVO unter Umständen das Recht, nicht einer ausschließlich auf einer automatisierten Verarbeitung (zum Beispiel Profiling) beruhenden Entscheidung unterworfen zu werden.
Wenn Sie glauben, dass die Verarbeitung Ihrer Daten gegen das Datenschutzrecht verstößt oder Ihre datenschutzrechtlichen Ansprüche in sonst einer Weise verletzt worden sind, können Sie sich bei der Aufsichtsbehörde beschweren. Diese ist für Österreich die Datenschutzbehörde, deren Website Sie unter https://www.dsb.gv.at/ finden und für Deutschland können Sie sich an die Bundesbeauftragte für den Datenschutz und die Informationsfreiheit (BfDI) wenden.

Kurz gesagt: Sie haben Rechte – zögern Sie nicht, die oben gelistete verantwortliche Stelle bei uns zu kontaktieren!

Google Analytics Datenschutzerklärung
Google Analytics Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Auswertung der Besucherinformationen zur Optimierung des Webangebots.
📓 Verarbeitete Daten: Zugriffsstatistiken, die Daten wie Standorte der Zugriffe, Gerätedaten, Zugriffsdauer und Zeitpunkt, Navigationsverhalten, Klickverhalten und IP-Adressen enthalten. Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: abhängig von den verwendeten Properties
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Google Analytics?
Wir verwenden auf unserer Website das Analyse-Tracking Tool Google Analytics (GA) des amerikanischen Unternehmens Google Inc. Für den europäischen Raum ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) für alle Google-Dienste verantwortlich. Google Analytics sammelt Daten über Ihre Handlungen auf unserer Website. Wenn Sie beispielsweise einen Link anklicken, wird diese Aktion in einem Cookie gespeichert und an Google Analytics versandt. Mithilfe der Berichte, die wir von Google Analytics erhalten, können wir unsere Website und unser Service besser an Ihre Wünsche anpassen. Im Folgenden gehen wir näher auf das Tracking-Tool ein und informieren Sie vor allem darüber, welche Daten gespeichert werden und wie Sie das verhindern können.

Google Analytics ist ein Trackingtool, das der Datenverkehrsanalyse unserer Website dient. Damit Google Analytics funktioniert, wird ein Tracking-Code in den Code unserer Website eingebaut. Wenn Sie unsere Website besuchen, zeichnet dieser Code verschiedene Handlungen auf, die Sie auf unserer Website ausführen. Sobald Sie unsere Website verlassen, werden diese Daten an die Google-Analytics-Server gesendet und dort gespeichert.

Google verarbeitet die Daten und wir bekommen Berichte über Ihr Userverhalten. Dabei kann es sich unter anderem um folgende Berichte handeln:

Zielgruppenberichte: Über Zielgruppenberichte lernen wir unsere User besser kennen und wissen genauer, wer sich für unser Service interessiert.
Anzeigeberichte: Durch Anzeigeberichte können wir unsere Onlinewerbung leichter analysieren und verbessern.
Akquisitionsberichte: Akquisitionsberichte geben uns hilfreiche Informationen darüber, wie wir mehr Menschen für unser Service begeistern können.
Verhaltensberichte: Hier erfahren wir, wie Sie mit unserer Website interagieren. Wir können nachvollziehen welchen Weg Sie auf unserer Seite zurücklegen und welche Links Sie anklicken.
Conversionsberichte: Conversion nennt man einen Vorgang, bei dem Sie aufgrund einer Marketing-Botschaft eine gewünschte Handlung ausführen. Zum Beispiel, wenn Sie von einem reinen Websitebesucher zu einem Käufer oder Newsletter-Abonnent werden. Mithilfe dieser Berichte erfahren wir mehr darüber, wie unsere Marketing-Maßnahmen bei Ihnen ankommen. So wollen wir unsere Conversionrate steigern.
Echtzeitberichte: Hier erfahren wir immer sofort, was gerade auf unserer Website passiert. Zum Beispiel sehen wir wie viele User gerade diesen Text lesen.
Warum verwenden wir Google Analytics auf unserer Website?
Unser Ziel mit dieser Website ist klar: Wir wollen Ihnen das bestmögliche Service bieten. Die Statistiken und Daten von Google Analytics helfen uns dieses Ziel zu erreichen.

Die statistisch ausgewerteten Daten zeigen uns ein klares Bild von den Stärken und Schwächen unserer Website. Einerseits können wir unsere Seite so optimieren, dass sie von interessierten Menschen auf Google leichter gefunden wird. Andererseits helfen uns die Daten, Sie als Besucher besser zu verstehen. Wir wissen somit sehr genau, was wir an unserer Website verbessern müssen, um Ihnen das bestmögliche Service zu bieten. Die Daten dienen uns auch, unsere Werbe- und Marketing-Maßnahmen individueller und kostengünstiger durchzuführen. Schließlich macht es nur Sinn, unsere Produkte und Dienstleistungen Menschen zu zeigen, die sich dafür interessieren.

Welche Daten werden von Google Analytics gespeichert?
Google Analytics erstellt mithilfe eines Tracking-Codes eine zufällige, eindeutige ID, die mit Ihrem Browser-Cookie verbunden ist. So erkennt Sie Google Analytics als neuen User. Wenn Sie das nächste Mal unsere Seite besuchen, werden Sie als „wiederkehrender“ User erkannt. Alle gesammelten Daten werden gemeinsam mit dieser User-ID gespeichert. So ist es überhaupt erst möglich pseudonyme Userprofile auszuwerten.

Um mit Google Analytics unsere Website analysieren zu können, muss eine Property-ID in den Tracking-Code eingefügt werden. Die Daten werden dann in der entsprechenden Property gespeichert. Für jede neu angelegte Property ist die Google Analytics 4-Property standardmäßig. Alternativ kann man aber auch noch die Universal Analytics Property erstellen. Je nach verwendeter Property werden Daten unterschiedlich lange gespeichert.

Durch Kennzeichnungen wie Cookies und App-Instanz-IDs werden Ihre Interaktionen auf unserer Website gemessen. Interaktionen sind alle Arten von Handlungen, die Sie auf unserer Website ausführen. Wenn Sie auch andere Google-Systeme (wie z.B. ein Google-Konto) nützen, können über Google Analytics generierte Daten mit Drittanbieter-Cookies verknüpft werden. Google gibt keine Google Analytics-Daten weiter, außer wir als Websitebetreiber genehmigen das. Zu Ausnahmen kann es kommen, wenn es gesetzlich erforderlich ist.

Folgende Cookies werden von Google Analytics verwendet:

Name: _ga
Wert: 2.1326744211.152311284247-5
Verwendungszweck: Standardmäßig verwendet analytics.js das Cookie _ga, um die User-ID zu speichern. Grundsätzlich dient es zur Unterscheidung der Webseitenbesucher.
Ablaufdatum: nach 2 Jahren

Name: _gid
Wert: 2.1687193234.152311284247-1
Verwendungszweck: Das Cookie dient auch zur Unterscheidung der Webseitenbesucher
Ablaufdatum: nach 24 Stunden

Name: _gat_gtag_UA_<property-id>
Wert: 1
Verwendungszweck: Wird zum Senken der Anforderungsrate verwendet. Wenn Google Analytics über den Google Tag Manager bereitgestellt wird, erhält dieser Cookie den Namen _dc_gtm_ <property-id>.
Ablaufdatum: nach 1 Minute

Name: AMP_TOKEN
Wert: keine Angaben
Verwendungszweck: Das Cookie hat einen Token, mit dem eine User ID vom AMP-Client-ID-Dienst abgerufen werden kann. Andere mögliche Werte weisen auf eine Abmeldung, eine Anfrage oder einen Fehler hin.
Ablaufdatum: nach 30 Sekunden bis zu einem Jahr

Name: __utma
Wert: 1564498958.1564498958.1564498958.1
Verwendungszweck: Mit diesem Cookie kann man Ihr Verhalten auf der Website verfolgen und die Leistung messen. Das Cookie wird jedes Mal aktualisiert, wenn Informationen an Google Analytics gesendet werden.
Ablaufdatum: nach 2 Jahren

Name: __utmt
Wert: 1
Verwendungszweck: Das Cookie wird wie _gat_gtag_UA_<property-id> zum Drosseln der Anforderungsrate verwendet.
Ablaufdatum: nach 10 Minuten

Name: __utmb
Wert: 3.10.1564498958
Verwendungszweck: Dieses Cookie wird verwendet, um neue Sitzungen zu bestimmen. Es wird jedes Mal aktualisiert, wenn neue Daten bzw. Infos an Google Analytics gesendet werden.
Ablaufdatum: nach 30 Minuten

Name: __utmc
Wert: 167421564
Verwendungszweck: Dieses Cookie wird verwendet, um neue Sitzungen für wiederkehrende Besucher festzulegen. Dabei handelt es sich um ein Session-Cookie und wird nur solange gespeichert, bis Sie den Browser wieder schließen.
Ablaufdatum: Nach Schließung des Browsers

Name: __utmz
Wert: m|utmccn=(referral)|utmcmd=referral|utmcct=/
Verwendungszweck: Das Cookie wird verwendet, um die Quelle des Besucheraufkommens auf unserer Website zu identifizieren. Das heißt, das Cookie speichert, von wo Sie auf unsere Website gekommen sind. Das kann eine andere Seite bzw. eine Werbeschaltung gewesen sein.
Ablaufdatum: nach 6 Monaten

Name: __utmv
Wert: keine Angabe
Verwendungszweck: Das Cookie wird verwendet, um benutzerdefinierte Userdaten zu speichern. Es wird immer aktualisiert, wenn Informationen an Google Analytics gesendet werden.
Ablaufdatum: nach 2 Jahren

Anmerkung: Diese Aufzählung kann keinen Anspruch auf Vollständigkeit erheben, da Google die Wahl ihrer Cookies immer wieder auch verändert.

Hier zeigen wir Ihnen einen Überblick über die wichtigsten Daten, die mit Google Analytics erhoben werden:

Heatmaps: Google legt sogenannte Heatmaps an. Über Heatmaps sieht man genau jene Bereiche, die Sie anklicken. So bekommen wir Informationen, wo Sie auf unserer Seite „unterwegs“ sind.

Sitzungsdauer: Als Sitzungsdauer bezeichnet Google die Zeit, die Sie auf unserer Seite verbringen, ohne die Seite zu verlassen. Wenn Sie 20 Minuten inaktiv waren, endet die Sitzung automatisch.

Absprungrate (engl. Bouncerate): Von einem Absprung ist die Rede, wenn Sie auf unserer Website nur eine Seite ansehen und dann unsere Website wieder verlassen.

Kontoerstellung: Wenn Sie auf unserer Website ein Konto erstellen bzw. eine Bestellung machen, erhebt Google Analytics diese Daten.

IP-Adresse: Die IP-Adresse wird nur in gekürzter Form dargestellt, damit keine eindeutige Zuordnung möglich ist.

Standort: Über die IP-Adresse kann das Land und Ihr ungefährer Standort bestimmt werden. Diesen Vorgang bezeichnet man auch als IP- Standortbestimmung.

Technische Informationen: Zu den technischen Informationen zählen unter anderem Ihr Browsertyp, Ihr Internetanbieter oder Ihre Bildschirmauflösung.

Herkunftsquelle: Google Analytics beziehungsweise uns interessiert natürlich auch über welche Website oder welche Werbung Sie auf unsere Seite gekommen sind.

Weitere Daten sind Kontaktdaten, etwaige Bewertungen, das Abspielen von Medien (z.B., wenn Sie ein Video über unsere Seite abspielen), das Teilen von Inhalten über Social Media oder das Hinzufügen zu Ihren Favoriten. Die Aufzählung hat keinen Vollständigkeitsanspruch und dient nur zu einer allgemeinen Orientierung der Datenspeicherung durch Google Analytics.

Wie lange und wo werden die Daten gespeichert?
Google hat Ihre Server auf der ganzen Welt verteilt. Die meisten Server befinden sich in Amerika und folglich werden Ihre Daten meist auf amerikanischen Servern gespeichert. Hier können Sie genau nachlesen wo sich die Google-Rechenzentren befinden: https://www.google.com/about/datacenters/inside/locations/?hl=de

Ihre Daten werden auf verschiedenen physischen Datenträgern verteilt. Das hat den Vorteil, dass die Daten schneller abrufbar sind und vor Manipulation besser geschützt sind. In jedem Google-Rechenzentrum gibt es entsprechende Notfallprogramme für Ihre Daten. Wenn beispielsweise die Hardware bei Google ausfällt oder Naturkatastrophen Server lahmlegen, bleibt das Risiko einer Dienstunterbrechung bei Google dennoch gering.

Die Aufbewahrungsdauer der Daten hängt von den verwendeten Properties ab. Bei der Verwendung der neueren Google Analytics 4-Properties ist die Aufbewahrungsdauer Ihrer Userdaten auf 14 Monate fix eingestellt. Für andere sogenannte Ereignisdaten haben wir die Möglichkeit eine Aufbewahrungsdauer von 2 Monaten oder 14 Monaten zu wählen.

Bei Universal Analytics-Properties ist bei Google Analytics eine Aufbewahrungsdauer Ihrer Userdaten von 26 Monaten standardisiert eingestellt. Dann werden Ihre Userdaten gelöscht. Allerdings haben wir die Möglichkeit, die Aufbewahrungsdauer von Nutzdaten selbst zu wählen. Dafür stehen uns fünf Varianten zur Verfügung:

Löschung nach 14 Monaten
Löschung nach 26 Monaten
Löschung nach 38 Monaten
Löschung nach 50 Monaten
Keine automatische Löschung
Zusätzlich gibt es auch die Option, dass Daten erst dann gelöscht werden, wenn Sie innerhalb des von uns gewählten Zeitraums nicht mehr unsere Website besuchen. In diesem Fall wird die Aufbewahrungsdauer jedes Mal zurückgesetzt, wenn Sie unsere Website innerhalb des festgelegten Zeitraums wieder besuchen.

Wenn der festgelegte Zeitraum abgelaufen ist, werden einmal im Monat die Daten gelöscht. Diese Aufbewahrungsdauer gilt für Ihre Daten, die mit Cookies, Usererkennung und Werbe-IDs (z.B. Cookies der DoubleClick-Domain) verknüpft sind. Berichtergebnisse basieren auf aggregierten Daten und werden unabhängig von Nutzerdaten gespeichert. Aggregierte Daten sind eine Zusammenschmelzung von Einzeldaten zu einer größeren Einheit.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Nach dem Datenschutzrecht der Europäischen Union haben Sie das Recht, Auskunft über Ihre Daten zu erhalten, sie zu aktualisieren, zu löschen oder einzuschränken. Mithilfe des Browser-Add-ons zur Deaktivierung von Google Analytics-JavaScript (ga.js, analytics.js, dc.js) verhindern Sie, dass Google Analytics Ihre Daten verwendet. Das Browser-Add-on können Sie unter https://tools.google.com/dlpage/gaoptout?hl=de runterladen und installieren. Beachten Sie bitte, dass durch dieses Add-on nur die Datenerhebung durch Google Analytics deaktiviert wird.

Falls Sie grundsätzlich Cookies (unabhängig von Google Analytics) deaktivieren, löschen oder verwalten wollen, gibt es für jeden Browser eine eigene Anleitung:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Der Einsatz von Google Analytics setzt Ihre Einwilligung voraus, welche wir mit unserem Cookie Popup eingeholt haben. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Web-Analytics Tools vorkommen kann, dar.

Zusätzlich zur Einwilligung besteht von unserer Seite ein berechtigtes Interesse daran, dass Verhalten der Websitebesucher zu analysieren und so unser Angebot technisch und wirtschaftlich zu verbessern. Mit Hilfe von Google Analytics erkennen wir Fehler der Website, können Attacken identifizieren und die Wirtschaftlichkeit verbessern. Die Rechtsgrundlage dafür ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Wir hoffen, wir konnten Ihnen die wichtigsten Informationen rund um die Datenverarbeitung von Google Analytics näherbringen. Wenn Sie mehr über den Tracking-Dienst erfahren wollen, empfehlen wir diese beiden Links: http://www.google.com/analytics/terms/de.html und https://support.google.com/analytics/answer/6004245?hl=de.

Google Analytics IP-Anonymisierung
Wir haben auf dieser Webseite die IP-Adressen-Anonymisierung von Google Analytics implementiert. Diese Funktion wurde von Google entwickelt, damit diese Webseite die geltenden Datenschutzbestimmungen und Empfehlungen der lokalen Datenschutzbehörden einhalten kann, wenn diese eine Speicherung der vollständigen IP-Adresse untersagen. Die Anonymisierung bzw. Maskierung der IP findet statt, sobald die IP-Adressen im Google Analytics-Datenerfassungsnetzwerk eintreffen und bevor eine Speicherung oder Verarbeitung der Daten stattfindet.

Mehr Informationen zur IP-Anonymisierung finden Sie auf https://support.google.com/analytics/answer/2763052?hl=de.

Google Analytics Berichte zu demografischen Merkmalen und Interessen
Wir haben in Google Analytics die Funktionen für Werbeberichte eingeschaltet. Die Berichte zu demografischen Merkmalen und Interessen enthalten Angaben zu Alter, Geschlecht und Interessen. Damit können wir uns – ohne diese Daten einzelnen Personen zuordnen zu können – ein besseres Bild von unseren Nutzern machen. Mehr über die Werbefunktionen erfahren Sie auf https://support.google.com/analytics/answer/3450482?hl=de_AT&utm_id=ad.

Sie können die Nutzung der Aktivitäten und Informationen Ihres Google Kontos unter “Einstellungen für Werbung” auf https://adssettings.google.com/authenticated per Checkbox beenden.

Google Analytics Deaktivierungslink
Wenn Sie auf folgenden Deaktivierungslink klicken, können Sie verhindern, dass Google weitere Besuche auf dieser Webseite erfasst. Achtung: Das Löschen von Cookies, die Nutzung des Inkognito/Privatmodus Ihres Browsers, oder die Nutzung eines anderen Browsers führt dazu, dass wieder Daten erhoben werden.

Google Analytics deaktivieren

Google Analytics Zusatz zur Datenverarbeitung
Wir haben mit Google einen Direktkundenvertrag zur Verwendung von Google Analytics abgeschlossen, indem wir den “Zusatz zur Datenverarbeitung” in Google Analytics akzeptiert haben.

Mehr über den Zusatz zur Datenverarbeitung für Google Analytics finden Sie hier: https://support.google.com/analytics/answer/3379636?hl=de&utm_id=ad

Google Analytics Google-Signale Datenschutzerklärung
Wir haben in Google Analytics die Google-Signale aktiviert. So werden die bestehenden Google-Analytics-Funktionen (Werbeberichte, Remarketing, gerätübergreifende Berichte und Berichte zu Interessen und demografische Merkmale) aktualisiert, um zusammengefasste und anonymisierte Daten von Ihnen zu erhalten, sofern Sie personalisierte Anzeigen in Ihrem Google-Konto erlaubt haben.

Das besondere daran ist, dass es sich dabei um ein Cross-Device-Tracking handelt. Das heißt Ihre Daten können geräteübergreifend analysiert werden. Durch die Aktivierung von Google-Signale werden Daten erfasst und mit dem Google-Konto verknüpft. Google kann dadurch zum Beispiel erkennen, wenn Sie auf unsere Webseite über ein Smartphone ein Produkt ansehen und erst später über einen Laptop das Produkt kaufen. Dank der Aktivierung von Google-Signale können wir gerätübergreifende Remarketing-Kampagnen starten, die sonst in dieser Form nicht möglich wären. Remarketing bedeutet, dass wir Ihnen auch auf anderen Webseiten unser Angebot zeigen können.

In Google Analytics werden zudem durch die Google-Signale weitere Besucherdaten wie Standort, Suchverlauf, YouTube-Verlauf und Daten über Ihre Handlungen auf unserer Webseite, erfasst. Wir erhalten dadurch von Google bessere Werbeberichte und nützlichere Angaben zu Ihren Interessen und demografischen Merkmalen. Dazu gehören Ihr Alter, welche Sprache sie sprechen, wo Sie wohnen oder welchem Geschlecht Sie angehören. Weiters kommen auch noch soziale Kriterien wie Ihr Beruf, Ihr Familienstand oder Ihr Einkommen hinzu. All diese Merkmal helfen Google Analytics Personengruppen bzw. Zielgruppen zu definieren.

Die Berichte helfen uns auch Ihr Verhalten, Ihre Wünsche und Interessen besser einschätzen zu können. Dadurch können wir unsere Dienstleistungen und Produkte für Sie optimieren und anpassen. Diese Daten laufen standardmäßig nach 26 Monaten ab. Bitte beachten Sie, dass diese Datenerfassung nur erfolgt, wenn Sie personalisierte Werbung in Ihrem Google-Konto zugelassen haben. Es handelt sich dabei immer um zusammengefasste und anonyme Daten und nie um Daten einzelner Personen. In Ihrem Google-Konto können Sie diese Daten verwalten bzw. auch löschen.

Facebook-Pixel Datenschutzerklärung
Wir verwenden auf unserer Webseite das Facebook-Pixel von Facebook. Dafür haben wir einen Code auf unserer Webseite implementiert. Der Facebook-Pixel ist ein Ausschnitt aus JavaScript-Code, der eine Ansammlung von Funktionen lädt, mit denen Facebook Ihre Userhandlungen verfolgen kann, sofern Sie über Facebook-Ads auf unsere Webseite gekommen sind. Wenn Sie beispielsweise ein Produkt auf unserer Webseite erwerben, wird das Facebook-Pixel ausgelöst und speichert Ihre Handlungen auf unserer Webseite in einem oder mehreren Cookies. Diese Cookies ermöglichen es Facebook Ihre Userdaten (Kundendaten wie IP-Adresse, User-ID) mit den Daten Ihres Facebook-Kontos abzugleichen. Dann löscht Facebook diese Daten wieder. Die erhobenen Daten sind für uns anonym und nicht einsehbar und werden nur im Rahmen von Werbeanzeigenschaltungen nutzbar. Wenn Sie selbst Facebook-User sind und angemeldet sind, wird der Besuch unserer Webseite automatisch Ihrem Facebook-Benutzerkonto zugeordnet.

Wir wollen unsere Dienstleistungen bzw. Produkte nur jenen Menschen zeigen, die sich auch wirklich dafür interessieren. Mithilfe von Facebook-Pixel können unsere Werbemaßnahmen besser auf Ihre Wünsche und Interessen abgestimmt werden. So bekommen Facebook-User (sofern sie personalisierte Werbung erlaubt haben) passende Werbung zu sehen. Weiters verwendet Facebook die erhobenen Daten zu Analysezwecken und eigenen Werbeanzeigen.

Im Folgenden zeigen wir Ihnen jene Cookies, die durch das Einbinden von Facebook-Pixel auf einer Testseite gesetzt wurden. Bitte beachten Sie, dass dies nur Beispiel-Cookies sind. Je nach Interaktion auf unserer Webseite werden unterschiedliche Cookies gesetzt.

Name: _fbp
Wert: fb.1.1568287647279.257405483-6311284247-7
Verwendungszweck: Dieses Cookie verwendet Facebook, um Werbeprodukte anzuzeigen.
Ablaufdatum: nach 3 Monaten

Name: fr
Wert: 0aPf312HOS5Pboo2r..Bdeiuf…1.0.Bdeiuf.
Verwendungszweck: Dieses Cookie wird verwendet, damit Facebook-Pixel auch ordentlich funktioniert.
Ablaufdatum: nach 3 Monaten

Name: comment_author_50ae8267e2bdf1253ec1a5769f48e062311284247-3
Wert: Name des Autors
Verwendungszweck: Dieses Cookie speichert den Text und den Namen eines Users, der beispielsweise einen Kommentar hinterlässt.
Ablaufdatum: nach 12 Monaten

Name: comment_author_url_50ae8267e2bdf1253ec1a5769f48e062
Wert: https%3A%2F%2Fwww.testseite…%2F (URL des Autors)
Verwendungszweck: Dieses Cookie speichert die URL der Website, die der User in einem Textfeld auf unserer Webseite eingibt.
Ablaufdatum: nach 12 Monaten

Name: comment_author_email_50ae8267e2bdf1253ec1a5769f48e062
Wert: E-Mail-Adresse des Autors
Verwendungszweck: Dieses Cookie speichert die E-Mail-Adresse des Users, sofern er sie auf der Website bekannt gegeben hat.
Ablaufdatum: nach 12 Monaten

Anmerkung: Die oben genannten Cookies beziehen sich auf ein individuelles Userverhalten. Speziell bei der Verwendung von Cookies sind Veränderungen bei Facebook nie auszuschließen.

Sofern Sie bei Facebook angemeldet sind, können Sie Ihre Einstellungen für Werbeanzeigen unter https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen selbst verändern. Falls Sie kein Facebook-User sind, können Sie auf http://www.youronlinechoices.com/de/praferenzmanagement/ grundsätzlich Ihre nutzungsbasierte Online-Werbung verwalten. Dort haben Sie die Möglichkeit, Anbieter zu deaktivieren bzw. zu aktivieren.

Wenn Sie mehr über den Datenschutz von Facebook erfahren wollen, empfehlen wir Ihnen die eigenen Datenrichtlinien des Unternehmens auf https://www.facebook.com/policy.php.

Facebook Automatischer erweiterter Abgleich Datenschutzerklärung
Wir haben im Rahmen der Facebook-Pixel-Funktion auch den automatischen erweiterten Abgleich (engl. Automatic Advanced Matching) aktiviert. Diese Funktion des Pixels ermöglicht uns, gehashte E-Mails, Namen, Geschlecht, Stadt, Bundesland, Postleitzahl und Geburtsdatum oder Telefonnummer als zusätzliche Informationen an Facebook zu senden, sofern Sie uns diese Daten zur Verfügung gestellt haben. Diese Aktivierung ermöglicht uns Werbekampagnen auf Facebook noch genauer auf Menschen, die sich für unsere Dienstleistungen oder Produkte interessieren, anzupassen.

Google Ads (Google AdWords) Conversion-Tracking Datenschutzerklärung
Google Ads (Google AdWords) Conversion-Tracking Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: wirtschaftlicher Erfolg und die Optimierung unserer Serviceleistung.
📓 Verarbeitete Daten: Zugriffsstatistiken, die Daten wie Standorte der Zugriffe, Gerätedaten, Zugriffsdauer und Zeitpunkt, Navigationsverhalten, Klickverhalten und IP-Adressen enthalten. Auch personenbezogene Daten wie Name oder E-Mail-Adresse können verarbeitet werden.
📅 Speicherdauer: Conversion-Cookies laufen in der Regel nach 30 Tagen ab und übermitteln keine personenbezogenen Daten
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit.f DSGVO (Berechtigte Interessen)
Was ist Google Ads Conversion-Tracking?
Wir verwenden als Online-Marketing-Maßnahme Google Ads (früher Google AdWords), um unsere Produkte und Dienstleistungen zu bewerben. So wollen wir im Internet mehr Menschen auf die hohe Qualität unserer Angebote aufmerksam machen. Im Rahmen unserer Werbe-Maßnahmen durch Google Ads verwenden wir auf unserer Website das Conversion-Tracking der Firma Google Inc. In Europa ist allerdings für alle Google-Dienste das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) verantwortlich. Mithilfe dieses kostenlosen Tracking-Tools können wir unser Werbeangebot an Ihre Interessen und Bedürfnisse besser anpassen. Im Folgenden Artikel wollen wir genauer darauf eingehen, warum wir Conversion-Tracking benutzen, welche Daten dabei gespeichert werden und wie Sie diese Datenspeicherung verhindern.

Google Ads (früher Google AdWords) ist das hauseigene Online-Werbesystem der Firma Google Inc. Wir sind von der Qualität unseres Angebots überzeugt und wollen, dass so viele Menschen wie möglich unsere Webseite kennenlernen. Im Onlinebereich bietet Google Ads dafür die beste Plattform. Natürlich wollen wir auch einen genauen Überblick über den Kosten-Nutzen-Faktor unserer Werbeaktionen gewinnen. Darum verwenden wir das Conversion-Tracking-Tool von Google Ads.

Doch was ist eine Conversion eigentlich? Eine Conversion entsteht, wenn Sie von einem rein interessierten Webseitenbesucher zu einem handelnden Besucher werden. Dies passiert immer dann, wenn Sie auf unsere Anzeige klicken und im Anschluss eine andere Aktion ausführen, wie zum Beispiel unsere Webseite besuchen. Mit dem Conversion-Tracking-Tool von Google erfassen wir, was nach einem Klick eines Users auf unsere Google Ads-Anzeige geschieht. Zum Beispiel können wir so sehen, ob Produkte gekauft werden, Dienstleistungen in Anspruch genommen werden oder ob sich User für unseren Newsletter angemeldet haben.

Warum verwenden wir Google Ads Conversion-Tracking auf unserer Website?
Wir setzen Google Ads ein, um auch auf anderen Webseiten auf unser Angebot aufmerksam zu machen. Ziel ist es, dass unsere Werbekampagnen wirklich auch nur jene Menschen erreichen, die sich für unsere Angebote interessieren. Mit dem Conversion-Tracking Tool sehen wir welche Keywords, Anzeigen, Anzeigengruppen und Kampagnen zu den gewünschten Kundenaktionen führen. Wir sehen wie viele Kunden mit unseren Anzeigen auf einem Gerät interagieren und dann eine Conversion durchführen. Durch diese Daten können wir unseren Kosten-Nutzen-Faktor berechnen, den Erfolg einzelner Werbemaßnahmen messen und folglich unsere Online-Marketing-Maßnahmen optimieren. Wir können weiters mithilfe der gewonnenen Daten unsere Webseite für Sie interessanter gestalten und unser Werbeangebot noch individueller an Ihre Bedürfnisse anpassen.

Welche Daten werden bei Google Ads Conversion-Tracking gespeichert?
Wir haben ein Conversion-Tracking-Tag oder Code-Snippet auf unserer Webseite eingebunden, um gewisse User-Aktionen besser analysieren zu können. Wenn Sie nun eine unserer Google Ads-Anzeigen anklicken, wird auf Ihrem Computer (meist im Browser) oder Mobilgerät das Cookie „Conversion“ von einer Google-Domain gespeichert. Cookies sind kleine Textdateien, die Informationen auf Ihrem Computer speichern.

Hier die Daten der wichtigsten Cookies für das Conversion-Tracking von Google:

Name: Conversion
Wert: EhMI_aySuoyv4gIVled3Ch0llweVGAEgt-mr6aXd7dYlSAGQ311284247-3
Verwendungszweck: Dieses Cookie speichert jede Conversion, die Sie auf unserer Seite machen, nachdem Sie über eine Google Ad zu uns gekommen sind.
Ablaufdatum: nach 3 Monaten

Name: _gac
Wert: 1.1558695989.EAIaIQobChMIiOmEgYO04gIVj5AYCh2CBAPrEAAYASAAEgIYQfD_BwE
Verwendungszweck: Dies ist ein klassisches Google Analytics-Cookie und dient dem Erfassen verschiedener Handlungen auf unserer Webseite.
Ablaufdatum: nach 3 Monaten

Anmerkung: Das Cookie _gac scheint nur in Verbindung mit Google Analytics auf. Die oben angeführte Aufzählung hat keinen Anspruch auf Vollständigkeit, da Google für analytische Auswertung immer wieder auch andere Cookies verwendet.

Sobald Sie eine Aktion auf unserer Webseite abschließen, erkennt Google das Cookie und speichert Ihre Handlung als sogenannte Conversion. Solange Sie auf unserer Webseite surfen und das Cookie noch nicht abgelaufen ist, erkennen wir und Google, dass Sie über unsere Google-Ads-Anzeige zu uns gefunden haben. Das Cookie wird ausgelesen und mit den Conversion-Daten zurück an Google Ads gesendet. Es ist auch möglich, dass noch andere Cookies zur Messung von Conversions verwendet werden. Das Conversion-Tracking von Google Ads kann mithilfe von Google Analytics noch verfeinert und verbessert werden. Bei Anzeigen, die Google an verschiedenen Orten im Web anzeigt, werden unter unserer Domain möglicherweise Cookies mit dem Namen “__gads” oder “_gac” gesetzt. Seit September 2017 werden diverse Kampagneninformationen von analytics.js mit dem _gac-Cookie gespeichert. Das Cookie speichert diese Daten, sobald Sie eine unserer Seiten aufrufen, für die die automatische Tag-Kennzeichnung von Google Ads eingerichtet wurde. Im Gegensatz zu Cookies, die für Google-Domains gesetzt werden, kann Google diese Conversion-Cookies nur lesen, wenn Sie sich auf unserer Webseite befinden. Wir erheben und erhalten keine personenbezogenen Daten. Wir bekommen von Google einen Bericht mit statistischen Auswertungen. So erfahren wir beispielsweise die Gesamtanzahl der User, die unsere Anzeige angeklickt haben und wir sehen, welche Werbemaßnahmen gut ankamen.

Wie lange und wo werden die Daten gespeichert?
An dieser Stelle wollen wir darauf hinweisen, dass wir keinen Einfluss darauf haben, wie Google die erhobenen Daten weiterverwendet. Laut Google werden die Daten verschlüsselt und auf sicheren Servern gespeichert. In den meisten Fällen laufen Conversion-Cookies nach 30 Tagen ab und übermitteln keine personenbezogenen Daten. Die Cookies mit dem Namen „Conversion“ und „_gac“ (das in Verbindung mit Google Analytics zum Einsatz kommt) haben ein Ablaufdatum von 3 Monaten.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben die Möglichkeit am Conversion-Tracking von Google Ads nicht teilzunehmen. Wenn Sie das Cookie des Google Conversion-Trackings über Ihren Browser deaktivieren, blockieren Sie das Conversion-Tracking. In diesem Fall werden Sie in der Statistik des Tracking-Tools nicht berücksichtigt. Sie können die Cookie-Einstellungen in Ihrem Browser jederzeit verändern. Bei jedem Browser funktioniert dies etwas anders. Hier finden Sie die Anleitung, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Falls Sie grundsätzlich keine Cookies haben wollen, können Sie Ihren Browser so einrichten, dass er Sie immer informiert, wenn ein Cookie gesetzt werden soll. So können Sie bei jedem einzelnen Cookie entscheiden, ob Sie das Cookie erlauben oder nicht. Durch das Herunterladen und Installieren dieses Browser-Plug-ins auf https://support.google.com/ads/answer/7395996 werden ebenfalls alle „Werbecookies“ deaktiviert. Bedenken Sie, dass Sie durch das Deaktivieren dieser Cookies nicht die Werbeanzeigen verhindern, sondern nur die personalisierte Werbung.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass das Google Ads Conversion Tracking eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch das Google Ads Conversion Tracking vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, das Google Ads Conversion Tracking zu verwenden, um unser Online-Service und unsere Marketingmaßnahmen zu optimieren. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Wenn Sie Näheres über den Datenschutz bei Google erfahren möchten, empfehlen wir die allgemeine Datenschutzerklärung von Google: https://policies.google.com/privacy?hl=de.

Google AdSense Datenschutzerklärung
Google AdSense Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: wirtschaftlicher Erfolg und die Optimierung unserer Serviceleistung.
📓 Verarbeitete Daten: Zugriffsstatistiken, die Daten wie Standorte der Zugriffe, Gerätedaten, Zugriffsdauer und Zeitpunkt, Navigationsverhalten, Klickverhalten und IP-Adressen enthalten. Auch personenbezogene Daten wie Name oder E-Mail-Adresse können verarbeitet werden.
📅 Speicherdauer: abhängig von den verwendeten Cookies und gespeicherten Daten
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit.f DSGVO (Berechtigte Interessen)
Was ist Google AdSense?
Wir verwenden auf dieser Website Google AdSense. Das ist ein Anzeigenprogramm der Firma Google Inc. In Europa ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) für alle Google-Dienste verantwortlich. Mit Google AdSense können wir auf dieser Webseite Werbeanzeigen einblenden, die zu unserem Thema passen. So bieten wir Ihnen Anzeigen, die im Idealfall einen richtigen Mehrwert für Sie darstellen. Im Zuge dieser Datenschutzerklärung über Google AdSense erklären wir Ihnen, warum wir Google AdSense auf unserer Webseite verwenden, welche Ihrer Daten verarbeitet und gespeichert werden und wie Sie diese Datenspeicherung unterbinden können.

Das Werbeprogramm Google AdSense gibt es mittlerweile seit 2003. Im Gegensatz zu Google Ads (früher: Google AdWords) kann man hier nicht selbst Werbung schalten. Über Google AdSense werden Werbeanzeigen auf Webseiten, wie zum Beispiel auf unserer, ausgespielt. Der größte Vorteil dieses Werbedienstes im Vergleich zu manch anderen ist, dass Ihnen Google AdSense nur Anzeigen zeigt, die zu unseren Inhalten passen. Google hat einen eigenen Algorithmus, der berechnet, welche Werbeanzeigen Sie zu Gesicht bekommen. Natürlich wollen wir Ihnen nur Werbung bieten, die Sie auch interessiert und Ihnen einen Mehrwert bietet. Google überprüft anhand Ihrer Interessen bzw. Ihres Userverhaltens und anhand unseres Angebots, welche Werbeanzeigen für unsere Webseite und für unserer User geeignet sind. An dieser Stelle wollen wir auch gleich erwähnen, dass wir für die Auswahl der Werbeanzeigen nicht verantwortlich sind. Wir bieten mit unserer Webseite lediglich die Werbefläche an. Die Auswahl der angezeigten Werbung trifft Google. Seit August 2013 werden die Anzeigen auch an die jeweilige Benutzeroberfläche angepasst. Das heißt, egal ob Sie von Ihrem Smartphone, Ihrem PC oder Laptop unsere Webseite besuchen, die Anzeigen passen sich an Ihr Endgerät an.

Warum verwenden wir Google AdSense auf unserer Website?
Das Betreiben einer hochwertigen Website erfordert viel Hingabe und großen Einsatz. Im Grunde sind wir mit der Arbeit an unserer Webseite nie fertig. Wir versuchen stets unsere Seite zu pflegen und so aktuell wie möglich zu halten. Natürlich wollen wir mit dieser Arbeit auch einen wirtschaftlichen Erfolg erzielen. Darum haben wir uns für Werbeanzeigen als Einnahmequelle entschieden. Das Wichtigste für uns ist allerdings, Ihren Besuch auf unserer Webseite durch diese Anzeigen nicht zu stören. Mithilfe von Google AdSense wird Ihnen nur Werbung angeboten, die zu unseren Themen und Ihren Interessen passt.

Ähnlich wie bei der Google-Indexierung für eine Webseite, untersucht ein Bot den entsprechenden Content und die entsprechenden Angebote unserer Webseite. Dann werden die Werbeanzeigen inhaltlich angepasst und auf der Webseite präsentiert. Neben den inhaltlichen Überschneidungen zwischen Anzeige und Webseiten-Angebot unterstützt AdSense auch interessensbezogenes Targeting. Das bedeutet, dass Google auch Ihre Daten dazu verwendet, um auf Sie zugeschnittene Werbung anzubieten. So erhalten Sie Werbung, die Ihnen im Idealfall einen echten Mehrwert bietet und wir haben eine höhere Chance ein bisschen etwas zu verdienen.

Welche Daten werden von Google AdSense gespeichert?
Damit Google AdSense eine maßgeschneiderte, auf Sie angepasste Werbung anzeigen kann, werden unter anderem Cookies verwendet. Cookies sind kleine Textdateien, die bestimmte Informationen auf Ihrem Computer speichern.

In AdSense sollen Cookies bessere Werbung ermöglichen. Die Cookies enthalten keine personenidentifizierbaren Daten. Hierbei ist allerdings zu beachten, dass Google Daten wie zum Beispiel “Pseudonyme Cookie-IDs” (Name oder anderes Identifikationsmerkmal wird durch ein Pseudonym ersetzt) oder IP-Adressen als nicht personenidentifizierbare Informationen ansieht. Im Rahmen der DSGVO können diese Daten allerdings als personenbezogene Daten gelten. Google AdSense sendet nach jeder Impression (das ist immer dann der Fall, wenn Sie eine Anzeige sehen), jedem Klick und jeder anderen Aktivität, die zu einem Aufruf der Google AdSense-Server führt, ein Cookie an den Browser. Sofern der Browser das Cookie akzeptiert, wird es dort gespeichert.

Drittanbieter können im Rahmen von AdSense unter Umständen Cookies in Ihrem Browser platzieren und auslesen bzw. Web-Beacons verwenden, um Daten zu speichern, die sie durch die Anzeigenbereitstellung auf der Webseite erhalten. Als Web-Beacons bezeichnet man kleine Grafiken, die eine Logdatei-Analyse und eine Aufzeichnung der Logdatei machen. Diese Analyse ermöglicht eine statistische Auswertung für das Online-Marketing.

Google kann über diese Cookies bestimmte Informationen über Ihr Userverhalten auf unserer Webseite sammeln. Dazu zählen:

Informationen wie Sie mit einer Anzeige umgehen (Klicks, Impression, Mausbewegungen)
Informationen, ob in Ihrem Browser schon eine Anzeige zu einem früheren Zeitpunkt erschienen ist. Diese Daten helfen dabei, Ihnen eine Anzeige nicht öfter anzuzeigen.
Dabei analysiert Google die Daten zu den angezeigten Werbemitteln und Ihre IP-Adresse und wertet diese aus. Google verwendet die Daten in erster Linie, um die Effektivität einer Anzeige zu messen und das Werbeangebot zu verbessern. Diese Daten werden nicht mit personenbezogenen Daten, die Google möglicherweise über andere Google-Dienste von Ihnen hat, verknüpft.

Im Folgenden stellen wir Ihnen Cookies vor, die Google AdSense für Trackingzwecke verwendet. Hierbei beziehen wir uns auf eine Test-Webseite, die ausschließlich Google AdSense installiert hat: 

Name: uid
Wert: 891269189311284247-8
Verwendungszweck: Das Cookie wird unter der Domain adform.net gespeichert. Es stellt eine eindeutig zugewiesene, maschinell generierte User-ID bereit und sammelt Daten über die Aktivität auf unserer Webseite.
Ablaufdatum: nach 2 Monaten

Name: C
Wert: 1
Verwendungszweck: Dieses Cookie identifiziert, ob Ihr Browser Cookies akzeptiert. Das Cookie wird unter der Domain track.adform.net gespeichert.
Ablaufdatum: nach 1 Monat

Name: cid
Wert: 8912691894970695056,0,0,0,0
Verwendungszweck: Dieses Cookie wird unter der Domain track.adform.net gespeichert, steht für Client-ID und wird verwendet, um die Werbung für Sie zu verbessern. Es kann relevantere Werbung an den Besucher weiterleiten und hilft, die Berichte über die Kampagnenleistung zu verbessern.
Ablaufdatum: nach 2 Monaten

Name: IDE
Wert: zOtj4TWxwbFDjaATZ2TzNaQmxrU311284247-1
Verwendungszweck: Das Cookie wird unter der Domain doubleclick.net gespeichert. Es dient dazu, Ihre Aktionen nach der Anzeige bzw. nach dem Klicken der Anzeige zu registrieren. Dadurch kann man messen, wie gut eine Anzeige bei unseren Besuchern ankommt.
Ablaufdatum: nach 1 Monat

Name: test_cookie
Wert: keine Angabe
Verwendungszweck: Mithilfe des „test_cookies“ kann man überprüfen, ob Ihr Browser überhaupt Cookies unterstützt. Das Cookie wird unter der Domain doubleclick.net gespeichert.
Ablaufdatum: nach 1 Monat

Name: CT592996
Wert:733366
Verwendungszweck: Wird unter der Domain adform.net gespeichert. Das Cookie wird gesetzt sobald Sie auf eine Werbeanzeige klicken. Genauere Informationen über die Verwendung dieses Cookies konnten wir nicht in Erfahrung bringen.
Ablaufdatum: nach einer Stunde

Anmerkung: Diese Aufzählung kann keinen Anspruch auf Vollständigkeit erheben, da Google erfahrungsgemäß die Wahl seiner Cookies immer wieder verändert.

Wie lange und wo werden die Daten gespeichert?
Google erfasst Ihre IP-Adresse und verschiedene Aktivitäten, die Sie auf der Webseite ausführen. Cookies speichern diese Informationen zu den Interaktionen auf unserer Webseite. Laut Google sammelt und speichert das Unternehmen die angegebenen Informationen auf sichere Weise auf den hauseigenen Google-Servern in den USA.

Wenn Sie kein Google-Konto haben bzw. nicht angemeldet sind, speichert Google die erhobenen Daten mit einer eindeutigen Kennung (ID) meist auf Ihrem Browser. Die in Cookies gespeicherten eindeutigen IDs dienen beispielsweise dazu, personalisierte Werbung zu gewährleisten. Wenn Sie in einem Google-Konto angemeldet sind, kann Google auch personenbezogene Daten erheben.

Einige der Daten, die Google speichert, können Sie jederzeit wieder löschen (siehe nächsten Abschnitt). Viele Informationen, die in Cookies gespeichert sind, werden automatisch nach einer bestimmten Zeit wieder gelöscht. Es gibt allerdings auch Daten, die von Google über einen längeren Zeitraum gespeichert werden. Dies ist dann der Fall, wenn Google aus wirtschaftlichen oder rechtlichen Notwendigkeiten, gewisse Daten über einen unbestimmten, längeren Zeitraum speichern muss.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben immer die Möglichkeit Cookies, die sich auf Ihrem Computer befinden, zu löschen oder zu deaktivieren. Wie genau das funktioniert hängt von Ihrem Browser ab.

Hier finden Sie die Anleitung, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Falls Sie grundsätzlich keine Cookies haben wollen, können Sie Ihren Browser so einrichten, dass er Sie immer informiert, wenn ein Cookie gesetzt werden soll. So können Sie bei jedem einzelnen Cookie entscheiden, ob Sie das Cookie erlauben oder nicht. Durch das Herunterladen und Installieren dieses Browser-Plug-ins auf https://support.google.com/ads/answer/7395996 werden ebenfalls alle „Werbecookies“ deaktiviert. Bedenken Sie, dass Sie durch das Deaktivieren dieser Cookies nicht die Werbeanzeigen verhindern, sondern nur die personalisierte Werbung.

Wenn Sie ein Google Konto besitzen, können Sie auf der Webseite https://adssettings.google.com/authenticated personalisierte Werbung deaktivieren. Auch hier sehen Sie dann weiter Anzeigen, allerdings sind diese nicht mehr an Ihre Interessen angepasst. Dennoch werden die Anzeigen auf der Grundlage von ein paar Faktoren, wie Ihrem Standort, dem Browsertyp und der verwendeten Suchbegriffe, angezeigt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Google AdSense eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Google AdSense vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, Google AdSense zu verwenden, um unser Online-Service und unsere Marketingmaßnahmen zu optimieren. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Welche Daten Google grundsätzlich erfasst und wofür sie diese Daten verwenden, können Sie auf https://www.google.com/intl/de/policies/privacy/ nachlesen.

Microsoft Advertising Datenschutzerklärung
Microsoft Advertising Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: wirtschaftlicher Erfolg und die Optimierung unserer Serviceleistung.
📓 Verarbeitete Daten: Zugriffsstatistiken, die Daten wie Standorte der Zugriffe, Gerätedaten, Zugriffsdauer und Zeitpunkt, Navigationsverhalten, Klickverhalten und IP-Adressen enthalten. Auch personenbezogene Daten wie Name oder E-Mail-Adresse können verarbeitet werden.
📅 Speicherdauer: Microsoft speichert die Daten, bis sie für die Erfüllung der Zwecke nicht mehr gebraucht werden
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit.f DSGVO (Berechtigte Interessen)
Was ist Microsoft Advertising?
Für unsere Online-Marketing-Maßnahmen nutzen wir auch das Werbeprogramm Microsoft Advertising des Unternehmens Microsoft Corporation, One Microsoft Way, Redmond, WA 98052-6399, USA. Mit Hilfe von Microsoft Advertising wollen wir viele Menschen auf die hohe Qualität unserer Produkte und/oder Dienstleistungen aufmerksam machen. Dafür verwenden wir eine Technologie (Conversion-Tracking-Tool) von Microsoft auf unserer Website, die auch Daten von Ihnen speichert. In dieser Datenschutzerklärung gehen wir näher auf dieses Service ein, zeigen Ihnen welche Daten gespeichert, verwaltet und verarbeitet werden und wie Sie diese Datenspeicherung verhindern können.

Vielleicht kennen Sie Microsoft Advertising eher unter dem ehemaligen Namen „Bing Ads“. Dabei handelt es sich um ein Werbeprogramm von Microsoft, das auf einem Pay-per-Click-System basiert. Das bedeutet Werbetreibende können Werbeanzeigen über die Suchmaschinen Bing und Yahoo! schalten und bezahlen erst, wenn ein User auf die Anzeige klickt.

Warum verwenden wir Microsoft Advertising?
Wir sind von unseren Angeboten überzeugt und wollen diese natürlich einer breiten Öffentlichkeit präsentieren. Mit Microsoft Advertising können wir unsere Produkte oder Dienstleistungen genau jenen Menschen näherbringen, die sich auch wirklich dafür interessieren. Wir wollen unsere Produkte nicht nur auf der berühmten Suchmaschine Google präsentieren, sondern auch auf Bing und Yahoo! Mit Microsoft Advertising haben wir zudem die Möglichkeit Anzeigen im sogenannten „Microsoft Audience Network“ zu schalten. So können wir beispielsweise auch in LinkedIn Werbeanzeigen schalten. Durch das Conversion-Tracking erfahren wir zum Beispiel über welche Anzeige Sie zu uns gefunden haben, welche Unterseiten Ihnen besonders gefallen und welche Aktionen Sie auf unserer Website ausführen. Durch diese Daten können wir unsere Website, unsere Werbeanzeigen und unsere Angebote wesentlich besser an Ihre Bedürfnisse anpassen.

Welche Daten werden von Microsoft Advertising gespeichert?
Wir haben in unsere Website ein Conversion-Tracking Tag (also ein kleines Code-Snippet) von Microsoft Advertising eingebunden. Dabei handelt es sich um das sogenannte Universal-Event Tracking (UET)-Tag. Wenn Sie über eine Microsoftwerbung auf unsere Website kommen, können wir mit Hilfe dieses Trackingtools mehr über Ihr Userverhalten auf unserer Website erfahren. So erfahren wir etwa über welches Keyword bzw. welche Anzeige Sie zu uns gekommen sind, was Sie auf unserer Website anklicken, wie viele Menschen über Microsoft Ads unsere Website besuchen und wie lange Sie auf unserer Website bleiben. All diese Daten beziehen sich auf das Userverhalten und nicht auf personenbezogene Daten. Wir erhalten also nur Daten bzw. Auswertungen zu Ihrem Webverhalten, aber keine personenbezogenen Informationen. Microsoft nutzt die Daten, um das eigene Werbeangebot und weitere Dienste zu optimieren. Wenn Sie selbst ein Microsoft-Konto haben, können die erhobenen Daten mit Ihrem Konto verknüpft werden. So kann es auch sein, dass Microsoft Ihre IP-Adresse erkennt und speichert. Um all diese Daten zu Ihrem Userverhalten zu speichern wird in Ihrem Browser, nachdem Sie über eine Microsoft-Anzeige zu unserer Website gekommen sind, folgendes Cookie gesetzt:

Name: MUIDB
Wert: 08A53CA3313F6255044C307E353F61CD
Verwendungszweck: Dieses Cookie wird durch unser eingebettetes Microsoft-Tag (UET-Tag) eingestellt und dient der Synchronisierung über verschiedene Microsoft-Websites. Dadurch können Nutzer über verschiedene Domains hinweg erkannt werden.
Ablaufdatum: nach einem Jahr

Wenn Sie etwa über eine Bing-Anzeige zu unserer Website gelangen, können allerdings noch andere Cookies in Ihrem Browser gesetzt werden. Hier zeigen wir Ihnen eine Auswahl weiterer Cookies:

Name: ABDEF
Wert: V=0&ABDV=0&MRNB=1594294373452&MRB=0311284247-7
Verwendungszweck: Zu diesem Cookie konnten wir keine genaueren Informationen in Erfahrung bringen.
Ablaufdatum: nach einem Jahr

Name: SRCHD
Wert: AF=NOFORM
Verwendungszweck: Dieses Cookie ist für die Funktionalität des Trackings bzw. der Website verantwortlich.
Ablaufdatum: nach einem Jahr

Name: SRCHHPGUSR
Wert: WTS=63729889193&HV=1594294374&CW=1920&CH=937&DPR=1&UTC=120&DM=0
Verwendungszweck: Dieses Cookie verfolgt und speichert Ihr Nutzerverhalten auf unserer Website und die Interaktion der Bing-Map-Schnittstelle.
Ablaufdatum: nach einem Jahr

Name: SRCHUID
Wert: V=2&GUID=157B20CCF36A43F3A4AE9790346EB7A7&dmnchg=1
Verwendungszweck: Dieses Cookie verfolgt und speichert Ihr Nutzerverhalten auf unserer Website und die Interaktion der Bing-Map-API.
Ablaufdatum: nach einem Jahr

Name: _EDGE_S
Wert: mkt=de-at&SID=2EE7002D956A61511D280F2F9474607311284247-2
Verwendungszweck: Dieses Cookie sammelt und speichert Ihr Userverhalten über mehrere Websites hinweg. Ziel des Targetings ist es, die Werbemaßnahmen besser an die Interessen unserer Zielgruppe anzupassen.
Ablaufdatum: nach Ende der Browsersitzung

Name: _SS
Wert: SID=2EE7002D956A61511D280F2F94746077311284247-9
Verwendungszweck: Dieses Cookie dient unter anderem dazu, zu erkennen, wie Sie als User auf unsere Website zugegriffen haben. Also über welche Werbeanzeige Sie zu unserer Website geleitet wurden.
Ablaufdatum: nach einem Jahr

Wie lange und wo werden die Daten gespeichert?
Wie Microsoft die erhobenen Userdaten weiter verwendet, haben wir keinen Einfluss. Microsoft hat weltweit eigene Server in Betrieb. Die meisten befinden sich in den Vereinigten Staaten und darum können Ihre Daten auch auf den amerikanischen Servern gespeichert, verwaltet und verarbeitet werden. Microsoft speichert Daten (besonders personenbezogenen Daten) so lange wie es zur Erbringung der eigenen Dienstleistungen bzw. Produkte oder für rechtliche Zwecke notwendig ist. Microsoft erwähnt zudem noch, dass die tatsächliche Aufbewahrungsdauer stark variiert und vom jeweiligen Produkt abhängt.

Bei Suchanfragen über Bing löscht Microsoft Ihre gespeicherten Suchanfragen nach 6 Monaten, indem das Unternehmen Ihre IP-Adresse löscht. Cookie-IDs, die etwa über das Cookie MUID erzeugt werden, werden nach 18 Monaten unkenntlich gemacht.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben jederzeit die Möglichkeit nicht an dem Conversion-Tracking von Microsoft Ads teilzunehmen. Falls Sie nicht wollen, dass Ihnen interessensbezogene Werbeanzeigen von Microsoft Advertising angezeigt werden, können Sie über https://account.microsoft.com/privacy/ad-settings/signedout diese Funktion ausschalten. Zudem können Sie auch in Ihrem Browser alle Cookies deaktivieren, verwalten oder löschen. Bei jedem Browser funktioniert das ein wenig anders. Die Anleitungen der gängigsten Browser finden Sie hier:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Microsoft Advertising eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Microsoft Advertising vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, Microsoft Advertising zu verwenden, um unser Online-Service und unsere Marketingmaßnahmen zu optimieren. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Wir hoffen Ihnen einen Überblick über die Datenverarbeitung durch das Conversion-Tracking von Microsoft Ads geboten zu haben. Es ist natürlich immer möglich, dass sich die Datenschutzrichtlinien bei Microsoft ändern. Für mehr Informationen und um immer am Laufenden zu bleiben, empfehlen wir Ihnen auch die Datenschutzbestimmungen von Microsoft unter https://privacy.microsoft.com/de-de/privacystatement.

Cookiefirst Datenschutzerklärung
Wir verwenden auf unserer Website Cookiefirst, ein Cookie-Consent-Manager-Tool. Dienstanbieter ist das niederländische Unternehmen Digital Data Solutions B.V., Plantage Middenlaan 42a, 1018DH, Amsterdam, Niederlande. Mehr über die Daten, die durch die Verwendung von Cookiefirst verarbeitet werden, erfahren Sie in der Privacy Policy auf https://cookiefirst.com/legal/general-terms-conditions/.

 

AdSimple Cookie Manager Datenschutzerklärung
AdSimple Cookie Manager Datenschutzerklärung Zusammenfassung
👥 Betroffene: Website Besucher
🤝 Zweck: Einholung der Zustimmung zu bestimmten Cookies und somit dem Einsatz bestimmter Tools
📓 Verarbeitete Daten: Daten zur Verwaltung der eingestellten Cookie-Einstellungen wie IP-Adresse, Zeitpunkt der Zustimmung, Art der Zustimmung, einzelne Zustimmungen. Mehr Details dazu finden Sie weiter unter in dieser Datenschutzerklärung
📅 Speicherdauer: das verwendete Cookie läuft nach einem Jahr ab
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit.f DSGVO (berechtigte Interessen)
Was ist der AdSimple Cookie Manager?
Wir verwenden auf unserer Website den AdSimple Cookie Manager des Softwareentwicklungs- und Online-Marketing Unternehmens AdSimple GmbH, Fabriksgasse 20, 2230 Gänserndorf. Der AdSimple Cookie Manager bietet uns unter anderem die Möglichkeit, Ihnen einen umfangreichen und datenschutzkonformen Cookie-Hinweis zu liefern, damit Sie selbst entscheiden können, welche Cookies Sie zulassen und welche nicht. Durch die Verwendung dieser Software werden Daten von Ihnen an AdSimple gesendet und gespeichert. In dieser Datenschutzerklärung informieren wir Sie, warum wir den AdSimple Cookie Manager verwenden, welche Daten übertragen und gespeichert werden und wie Sie diese Datenübertragung verhindern können.

Der AdSimple Cookie Manager ist eine Software, die unsere Website scannt und alle vorhandenen Cookies identifiziert und kategorisiert. Zudem werden Sie als Websitebesucher über ein Cookie Hinweis Script über die Verwendung von Cookies informiert und entscheiden selbst welche Cookies Sie zulassen und welche nicht.

Warum verwenden wir den AdSimple Cookie Manager auf unserer Website?
Wir wollen Ihnen maximale Transparenz im Bereich Datenschutz bieten. Um das zu gewährleisten, müssen wir zuerst genau wissen, welche Cookies im Laufe der Zeit auf unserer Website gelandet sind. Dadurch, dass der Cookie Manager von AdSimple regelmäßig unsere Website scannt und alle Cookies ausfindig macht, haben wir die volle Kontrolle über diese Cookies und können so DSGVO-konform handeln. Wir können Sie dadurch über die Nutzung der Cookies auf unserer Website genau informieren. Weiters bekommen Sie stets einen aktuellen und datenschutzkonformen Cookie-Hinweis und entscheiden per Checkbox-System selbst, welche Cookies Sie akzeptieren bzw. blockieren.

Welche Daten werden von dem AdSimple Cookie Manager gespeichert?
Wenn Sie Cookies auf unserer Website zustimmen, wird folgendes Cookie von dem AdSimple Cookie Manager gesetzt:

Name: acm_status
Wert: “:true,”statistik”:true,”marketing”:true,”socialmedia”:true,”einstellungen”:true}
Verwendungszweck: In diesem Cookie wird Ihr Zustimmungsstatus, gespeichert. Dadurch kann unsere Website auch bei zukünftigen Besuchen den aktuellen Status lesen und befolgen.
Ablaufdatum: nach einem Jahr

Wie lange und wo werden die Daten gespeichert?
Alle Daten, die durch den AdSimple Cookie Manager erhoben werden, werden ausschließlich innerhalb der Europäischen Union übertragen und gespeichert. Die erhobenen Daten werden auf den Servern von AdSimple bei der Hetzner GmbH in Deutschland gespeichert. Zugriff auf diese Daten hat ausschließlich die AdSimple GmbH und die Hetzner GmbH.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben jederzeit das Recht auf Ihre personenbezogenen Daten zuzugreifen und sie auch zu löschen. Die Datenerfassung und Speicherung können Sie beispielsweise verhindern, indem Sie über das Cookie-Hinweis-Script die Verwendung von Cookies ablehnen. Eine weitere Möglichkeit die Datenverarbeitung zu unterbinden bzw. nach Ihren Wünschen zu verwalten, bietet Ihr Browser. Je nach Browser funktioniert die Cookie-Verwaltung etwas anders. Hier finden Sie die Anleitungen zu den momentan bekanntesten Browsern:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wenn Sie Cookies zustimmen, werden über diese Cookies personenbezogene Daten von Ihnen verarbeitet und gespeichert. Falls wir durch Ihre Einwilligung (Artikel 6 Abs. 1 lit. a DSGVO) Cookies verwenden dürfen, ist diese Einwilligung auch gleichzeitig die Rechtsgrundlage für die Verwendung von Cookies bzw. die Verarbeitung Ihrer Daten. Um die Einwilligung zu Cookies verwalten zu können und Ihnen die Einwilligung ermöglichen zu können, kommt der AdSimple Cookie Manager zum Einsatz. Der Einsatz dieser Software ermöglicht uns, die Website auf effiziente Weise rechtskonform zu betreiben, was ein berechtigtes Interesse (Artikel 6 Abs. 1 lit. f DSGVO) darstellt.

Wir hoffen, wir haben Ihnen einen guten Überblick über den Datenverkehr und die Datenverarbeitung durch den AdSimple Cookie Manager geliefert. Wenn Sie mehr über dieses Tool erfahren wollen, empfehlen wir Ihnen die Beschreibungsseite auf https://www.adsimple.at/adsimple-cookie-manager/.

Cookiebot Datenschutzerklärung
Cookiebot Datenschutzerklärung Zusammenfassung
👥 Betroffene: Website Besucher
🤝 Zweck: Einholung der Zustimmung zu bestimmten Cookies und somit dem Einsatz bestimmter Tools
📓 Verarbeitete Daten:  Daten zur Verwaltung der eingestellten Cookie-Einstellungen wie IP-Adresse, Zeitpunkt der Zustimmung, Art der Zustimmung, einzelne Zustimmungen. Mehr Details dazu finden Sie beim jeweils eingesetzten Tool.
📅 Speicherdauer: die Daten werden nach einem Jahr gelöscht
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit.f DSGVO (berechtigte Interessen)
Was ist Cookiebot?
Wir verwenden auf unserer Website Funktionen des Anbieters Cookiebot. Hinter Cookiebot steht das Unternehmen Cybot A/S, Havnegade 39, 1058 Kopenhagen, DK. Cookiebot bietet uns unter anderem die Möglichkeit, Ihnen einen umfangreichen Cookie-Hinweis (auch Cookie-Banner oder Cookie-Notice genannt) zu liefern. Durch die Verwendung dieser Funktion können Daten von Ihnen an Cookiebot bzw. Cybot gesendet, gespeichert und verarbeitet werden. In dieser Datenschutzerklärung informieren wir Sie warum wir Cookiebot nutzen, welche Daten übertragen werden und wie Sie diese Datenübertragung verhindern können.

Cookiebot ist ein Software-Produkt des Unternehmens Cybot. Die Software erstellt automatisch einen DSGVO-konformen Cookie-Hinweis für unserer Websitebesucher. Zudem scannt, kontrolliert und wertet die Technologie hinter Cookiebot alle Cookies und Tracking-Maßnahmen auf unserer Website.

Warum verwenden wir Cookiebot auf unserer Website?
Datenschutz nehmen wir sehr ernst. Wir wollen Ihnen ganz genau zeigen, was auf unserer Website vor sich geht und welche Ihrer Daten gespeichert werden. Cookiebot hilft uns einen guten Überblick über all unsere Cookies (Erst- und Drittanbieter-Cookies) zu erhalten. So können wir Sie über die Nutzung von Cookies auf unserer Website exakt und transparent informieren. Sie bekommen stets einen aktuellen und datenschutzkonformen Cookie-Hinweis und entscheiden selbst, welche Cookies Sie zulassen und welche nicht.

Welche Daten werden von Cookiebot gespeichert?
Wenn Sie Cookies zulassen, werden folgende Daten an Cybot übertragen, gespeichert und verarbeitet.

IP-Adresse (in anonymisierter Form, die letzten 3 Ziffern werden auf 0 gesetzt)
Datum und Uhrzeit Ihres Einverständnisses
unsere Website-URL
technische Browserdaten
verschlüsselter, anonymer Key
die Cookies, die Sie zugelassen haben (als Zustimmungsnachweis)
Folgenden Cookies werden von Cookiebot gesetzt, wenn Sie der Verwendung von Cookies zugestimmt haben:

Name: CookieConsent
Wert: {stamp:’P7to4eNgIHvJvDerjKneBsmJQd9311284247-2
Verwendungszweck: In diesem Cookie wird Ihr Zustimmungsstatus, gespeichert. Dadurch kann unsere Website auch bei zukünftigen Besuchen den aktuellen Status lesen und befolgen.
Ablaufdatum: nach einem Jahr

Name: CookieConsentBulkTicket
Wert: kDSPWpA%2fjhljZKClPqsncfR8SveTnNWhys5NojaxdFYBPjZ2PaDnUw%3d%3311284247-6
Verwendungszweck: Dieses Cookie wird gesetzt, wenn Sie alle Cookies erlauben und somit eine “Sammelzustimmung” aktiviert haben. Das Cookie speichert dann eine eigene, zufällige und eindeutige ID.
Ablaufdatum: nach einem Jahr

Anmerkung: Bitte bedenken Sie, dass es sich hier um eine beispielhafte Liste handelt und wir keinen Anspruch auf Vollständigkeit erheben können. In der Cookie-Erklärung unter https://www.cookiebot.com/de/cookie-declaration/ sehen Sie, welche weiteren Cookies eingesetzt werden können.

Laut der Datenschutzerklärung von Cybot verkauft das Unternehmen personenbezogene Daten nicht weiter. Cybot gibt allerdings Daten an vertrauensvolle Dritt- oder Subunternehmen weiter, die dem Unternehmen helfen, die eigenen betriebswirtschaftlichen Ziele zu erreichen. Daten werden auch dann weitergegeben, wenn dies rechtlich erforderlich ist.

Wie lange und wo werden die Daten gespeichert?
Alle erhobenen Daten werden ausschließlich innerhalb der Europäischen Union übertragen, gespeichert und weitergeleitet. Die Daten werden in einem Azure-Rechenzentrum (Cloud-Anbieter ist Microsoft) gespeichert. Auf  https://azure.microsoft.com/de-de/global-infrastructure/regions/ erfahren Sie mehr über alle „Azure-Regionen“. Alle User Daten werden von Cookiebot nach 12 Monaten ab der Registrierung (Cookie-Zustimmung) bzw. unmittelbar nach Kündigung des Cookiebot-Services gelöscht.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben jederzeit das Recht auf Ihre personenbezogenen Daten zuzugreifen und sie auch zu löschen. Die Datenerfassung und Speicherung können Sie beispielsweise verhindern, indem Sie über den Cookie-Hinweis die Verwendung von Cookies ablehnen. Eine weitere Möglichkeit die Datenverarbeitung zu unterbinden bzw. nach Ihren Wünschen zu verwalten, bietet Ihr Browser. Je nach Browser funktioniert die Cookie-Verwaltung etwas anders. Hier finden Sie die Anleitungen zu den momentan bekanntesten Browsern:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wenn Sie Cookies zustimmen, werden über diese Cookies personenbezogene Daten von Ihnen verarbeitet und gespeichert. Falls wir durch Ihre Einwilligung (Artikel 6 Abs. 1 lit. a DSGVO) Cookies verwenden dürfen, ist diese Einwilligung auch gleichzeitig die Rechtsgrundlage für die Verwendung von Cookies bzw. die Verarbeitung Ihrer Daten. Um die Einwilligung zu Cookies verwalten zu können und Ihnen die Einwilligung ermöglichen zu können, kommt der Cookiebot zum Einsatz. Der Einsatz dieser Software ermöglicht uns, die Website auf effiziente Weise rechtskonform zu betreiben, was ein berechtigtes Interesse (Artikel 6 Abs. 1 lit. f DSGVO) darstellt.

Wenn Sie mehr über die Datenschutzrichtlinien von „Cookiebot“ bzw. dem dahinterstehenden Unternehmen Cybot erfahren wollen, empfehlen wir Ihnen die Datenschutzrichtlinien unter https://www.cookiebot.com/de/privacy-policy/ durchzulesen.

 

Facebook Soziale Plug-ins Datenschutzerklärung
Auf unserer Webseite sind sogenannte soziale Plug-ins des Unternehmens Facebook Inc. eingebaut. Sie erkennen diese Buttons am klassischen Facebook-Logo, wie dem „Gefällt mir“-Button (die Hand mit erhobenem Daumen) oder an einer eindeutigen „Facebook Plug-in“-Kennzeichnung. Ein soziales Plug-in ist ein kleiner Teil von Facebook, der in unsere Seite integriert ist. Jedes Plug-in hat eine eigene Funktion. Die am meisten verwendeten Funktionen sind die bekannten “Gefällt mir”- und “Teilen”-Buttons.

Folgende soziale Plug-ins werden von Facebook angeboten:

“Speichern”-Button
“Gefällt mir”-Button, Teilen, Senden und Zitat
Seiten-Plug-in
Kommentare
Messenger-Plug-in
Eingebettete Beiträge und Videoplayer
Gruppen-Plug-in
Auf https://developers.facebook.com/docs/plugins erhalten Sie nähere Informationen, wie die einzelnen Plug-ins verwendet werden. Wir nützen die sozialen Plug-ins einerseits, um Ihnen ein besseres Usererlebnis auf unserer Seite zu bieten, andererseits weil Facebook dadurch unsere Werbeanzeigen optimieren kann.

Sofern Sie ein Facebook-Konto haben oder facebook.com schon mal besucht haben, hat Facebook bereits mindestens ein Cookie in Ihrem Browser gesetzt. In diesem Fall sendet Ihr Browser über dieses Cookie Informationen an Facebook, sobald Sie unsere Seite besuchen bzw. mit sozialen Plug-ins (z.B. dem „Gefällt mir“-Button) interagieren.

Die erhaltenen Informationen werden innerhalb von 90 Tagen wieder gelöscht bzw. anonymisiert. Laut Facebook gehören zu diesen Daten Ihre IP-Adresse, welche Webseite Sie besucht haben, das Datum, die Uhrzeit und weitere Informationen, die Ihren Browser betreffen.

Um zu verhindern, dass Facebook während Ihres Besuches auf unserer Webseite viele Daten sammelt und mit den Facebook-Daten verbindet, müssen Sie sich während des Webseitenbesuchs von Facebook abmelden (ausloggen).

Falls Sie bei Facebook nicht angemeldet sind oder kein Facebook-Konto besitzen, sendet Ihr Browser weniger Informationen an Facebook, weil Sie weniger Facebook-Cookies haben. Dennoch können Daten wie beispielsweise Ihre IP-Adresse oder welche Webseite Sie besuchen an Facebook übertragen werden. Wir möchten noch ausdrücklich darauf hinweisen, dass wir über die genauen Inhalte der Daten nicht exakt Bescheid wissen. Wir versuchen aber Sie nach unserem aktuellen Kenntnisstand so gut als möglich über die Datenverarbeitung aufzuklären. Wie Facebook die Daten nutzt, können Sie auch in den Datenrichtline des Unternehmens unter https://www.facebook.com/about/privacy/update nachlesen.

Folgende Cookies werden in Ihrem Browser mindestens gesetzt, wenn Sie eine Webseite mit sozialen Plug-ins von Facebook besuchen:

Name: dpr
Wert: keine Angabe
Verwendungszweck: Dieses Cookie wird verwendet, damit die sozialen Plug-ins auf unserer Webseite funktionieren.
Ablaufdatum: nach Sitzungsende

Name: fr
Wert: 0jieyh4311284247c2GnlufEJ9..Bde09j…1.0.Bde09j
Verwendungszweck: Auch das Cookie ist nötig, dass die Plug-ins einwandfrei funktionieren.
Ablaufdatum:: nach 3 Monaten

Anmerkung: Diese Cookies wurden nach einem Test gesetzt, auch wenn Sie nicht Facebook-Mitglied sind.

Sofern Sie bei Facebook angemeldet sind, können Sie Ihre Einstellungen für Werbeanzeigen unter https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen selbst verändern. Falls Sie kein Facebook-User sind, können Sie auf http://www.youronlinechoices.com/de/praferenzmanagement/grundsätzlich Ihre nutzungsbasierte Online-Werbung verwalten. Dort haben Sie die Möglichkeit, Anbieter zu deaktivieren bzw. zu aktivieren.

Wenn Sie mehr über den Datenschutz von Facebook erfahren wollen, empfehlen wir Ihnen die eigenen Datenrichtlinien des Unternehmens auf https://www.facebook.com/policy.php.

Facebook Login Datenschutzerklärung
Wir haben auf unserer Seite das praktische Facebook Login integriert. So können Sie sich bei uns ganz einfach mit Ihrem Facebook-Konto einloggen, ohne ein weiteres Benutzerkonto anlegen zu müssen. Wenn Sie sich entscheiden, Ihre Registrierung über das Facebook Login zu machen, werden Sie auf das Social Media Network Facebook weitergeleitet. Dort erfolgt die Anmeldung über Ihre Facebook Nutzerdaten. Durch dieses Login-Verfahren werden Daten über Sie bzw. Ihr Userverhalten gespeichert und an Facebook übermittelt.

Um die Daten zu speichern, benutzt Facebook verschiedene Cookies. Im Folgenden zeigen wir Ihnen die wichtigsten Cookies, die in Ihrem Browser gesetzt werden bzw. schon bestehen, wenn Sie sich über das Facebook Login auf unserer Seite anmelden:

Name: fr
Wert: 0jieyh4c2GnlufEJ9..Bde09j…1.0.Bde09j
Verwendungszweck: Dieses Cookie wird verwendet, damit das soziale Plugin auf unserer Webseite bestmöglich funktioniert.
Ablaufdatum: nach 3 Monaten

Name: datr
Wert: 4Jh7XUA2311284247SEmPsSfzCOO4JFFl
Verwendungszweck: Facebook setzt das “datr”-Cookie, wenn ein Webbrowser auf facebook.com zugreift, und das Cookie hilft, Anmeldeaktivitäten zu identifizieren und die Benutzer zu schützen.
Ablaufdatum: nach 2 Jahren

Name: _js_datr
Wert: deleted
Verwendungszweck: Dieses Session-Cookie setzt Facebook zu Trackingzwecken, auch wenn Sie kein Facebook-Konto haben oder ausgeloggt sind.
Ablaufdatum: nach Sitzungsende

Anmerkung: Die angeführten Cookies sind nur eine kleine Auswahl der Cookies, die Facebook zur Verfügung stehen. Weitere Cookies sind beispielsweise _ fbp, sb oder wd. Eine vollständige Aufzählung ist nicht möglich, da Facebook über eine Vielzahl an Cookies verfügt und diese variabel einsetzt.

Der Facebook Login bietet Ihnen einerseits einen schnellen und einfachen Registrierungsprozess, andererseits haben wir so die Möglichkeit Daten mit Facebook zu teilen. Dadurch können wir unser Angebot und unsere Werbeaktionen besser an Ihre Interessen und Bedürfnisse anpassen. Daten, die wir auf diese Weise von Facebook erhalten, sind öffentliche Daten wie

Ihr Facebook-Name
Ihr Profilbild
eine hinterlegte E-Mail-Adresse
Freundeslisten
Buttons-Angaben (z.B. „Gefällt mir“-Button)
Geburtstagsdatum
Sprache
Wohnort
Im Gegenzug stellen wir Facebook Informationen über Ihre Aktivitäten auf unserer Webseite bereit. Das sind unter anderem Informationen über Ihr verwendetes Endgerät, welche Unterseiten Sie bei uns besuchen oder welche Produkte Sie bei uns erworben haben.

Durch die Verwendung von Facebook Login willigen Sie der Datenverarbeitung ein. Sie können diese Vereinbarung jederzeit widerrufen. Wenn Sie mehr Informationen über die Datenverarbeitung durch Facebook erfahren wollen, empfehlen wir Ihnen die Facebook-Datenschutzerklärung unter https://de-de.facebook.com/policy.php.

Sofern Sie bei Facebook angemeldet sind, können Sie Ihre Einstellungen für Werbeanzeigen unter https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen selbst verändern.

Klarna Checkout Datenschutzerklärung
Klarna Checkout Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung des Zahlungsvorgangs auf unserer Website
📓 Verarbeitete Daten: Daten wie etwa Name, Adresse, Bankdaten (Kontonummer, Kreditkartennummer, Passwörter, TANs usw.), IP-Adresse und Vertragsdaten
Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: Daten werden gespeichert, solange Klarna sie für den Verarbeitungszweck benötigt.
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. c DSGVO (Rechtliche Verpflichtung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Klarna Checkout?
Wir verwenden auf unserer Website das Online-Zahlungssystem Klarna Checkout des schwedischen Unternehmens Klarna Bank AB. Die Klarna-Bank hat ihren Hauptfirmensitz in Sveavägen 46, 111 34 Stockholm, Schweden. Wenn Sie sich für diesen Dienst entscheiden, werden unter anderem personenbezogene Daten an Klarna gesendet, gespeichert und verarbeitet. In dieser Datenschutzerklärung möchten wir Ihnen einen Überblick über die Datenverarbeitung durch Klarna geben.

Klarna Checkout ist ein Zahlungssystem für Bestellungen in einem Onlineshop. Dabei wählt der Nutzer die Zahlungsart und Klarna Checkout übernimmt den gesamten Zahlungsprozess. Nachdem ein Nutzer einmal eine Zahlung über das Checkout-System durchgeführt hat und die entsprechenden Daten angegeben hat, können zukünftige Online-Einkäufe noch schneller und einfacher durchgeführt werden. Das Klarna-System erkennt dann bereits nach Eingabe der E-Mail-Adresse und Postleitzahl den bestehenden Kunden.

Warum verwenden wir Klarna Checkout für unsere Webseite?
Unser Ziel mit unserer Website und unserem eingebundenen Onlineshop ist es, Ihnen das bestmögliche Service zu bieten. Dazu zählt neben dem Gesamterlebnis auf der Website und neben unseren Angeboten auch eine reibungslose, schnelle und sichere Zahlungsabwicklung Ihrer Bestellungen. Um das zu gewährleisten, nutzen wir das Zahlungssystem Klarna Checkout.

Welche Daten werden von Klarna Checkout gespeichert?
Sobald Sie sich für den Zahlungsdienst Klarna entscheiden und über die Zahlungsmethode Klarna Checkout bezahlen, übermitteln Sie auch personenbezogene Daten an das Unternehmen. Auf der Klarna Checkout-Seite werden technische Daten wie Browsertyp, Betriebssystem, unsere Internetadresse, Datum und Uhrzeit, Spracheinstellungen, Zeitzoneneinstellungen und IP-Adresse von Ihnen erhoben und an die Server von Klarna übermittelt und dort gespeichert. Diese Daten werden auch dann gespeichert, wenn Sie noch keine Bestellung abgeschlossen haben.

Wenn Sie ein Produkt oder eine Dienstleistung über unseren Shop bestellen, müssen Sie in die vorgegebenen Felder Daten zu Ihrer Person eingeben. Diese Daten werden durch Klarna für die Zahlungsabwicklung verarbeitet. Dabei können zur Bonitäts- und Identitätsprüfung speziell folgende personenbezogenen Daten (sowie allgemeine Produktinformationen) durch Klarna gespeichert und verarbeitet werden:

Kontaktinformationen: Namen, Geburtsdatum, nationale Ausweisnummer, Titel, Rechnungs- und Lieferadresse, E-Mail-Adresse, Telefonnummer, Nationalität oder Gehalt.
Zahlungsinformationen wie Kreditkartendaten oder Ihre Kontonummer
Produktinformationen wie Sendungsnummer, Art des Artikels und Preis des Produkts
Zudem gibt es auch noch Daten, die optional erhoben werden können, sofern Sie sich dazu bewusst entscheiden. Das sind etwa politische, religiöse oder weltanschauliche Überzeugungen oder diverse Gesundheitsdaten.

Klarna kann auch selbst oder über Dritte (wie beispielsweise über uns oder über öffentliche Datenbanken) neben den oben genannten Daten auch Daten zu den Waren oder Dienstleistungen, die Sie kaufen oder bestellen erheben. Das kann zum Beispiel die Sendungsnummer oder die Art des bestellten Artikels sein, aber auch Auskünfte über Ihre Bonität, über Ihr Einkommen oder Kreditgewährungen. Klarna kann Ihre personenbezogenen Daten auch Dienstleister wie etwa Softwareanbieter, Datenspeicheranbieter oder uns als Händler weitergeben.

Wenn Daten automatisch in ein Formular eingetragen werden, dann sind immer Cookies im Spiel. Wenn Sie diese Funktion nicht nutzen wollen, können Sie jederzeit diese Cookies deaktivieren. Weiter unten im Text finden Sie eine Anleitung, wie Sie Cookies in Ihrem Browser grundsätzlich löschen, deaktivieren oder verwalten. Unsere Tests haben ergeben, dass von Klarna direkt keine Cookies gesetzt werden. Wenn Sie die Zahlungsmethode “Klarna Sofort” wählen und auf “Bestellen” klicken, werden Sie auf die Sofort-Website weitergeleitet. Nach der erfolgreichen Zahlung kommen Sie auf unsere Dankesseite. Dort wird von sofort.com folgendes Cookie gesetzt:

Name: SOFUEB
Wert: e8cipp378mdscn9e17kajlfhv7311284247-4
Verwendungszweck: Dieses Cookie speichert Ihre Session-ID.
Ablaufdatum: nach Beenden der Browsersitzung

Wie lange und wo werden die Daten gespeichert?
Klarna ist bemüht Ihre Daten nur innerhalb der EU bzw. des Europäischen Wirtschaftsraums (EWR) zu speichern. Es kann aber auch vorkommen, dass Daten außerhalb des EU/EWR übertragen werden. Wenn das passiert, stellt Klarna sicher, dass der Datenschutz im Einklang mit der DSGVO steht und das Drittland in einer Angemessenheitsentscheidung der Europäischen Union steht. Die Daten werden immer gespeichert, solange Klarna sie für den Verarbeitungszweck benötigt.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie können Ihre Einwilligung, dass Klarna personenbezogene Daten verarbeitet jederzeit widerrufen. Sie haben auch immer das Recht auf Auskunft, Berichtigung und Löschung Ihrer personenbezogenen Daten. Dafür müssen Sie lediglich das Unternehmen bzw. das Datenschutzteam des Unternehmens per E-Mail an datenschutz@klarna.de kontaktieren. Über die Klarna-Webseite „Meine Datenschutzanfrage“ können Sie ebenfalls mit Klarna direkt in Kontakt treten.

Cookies, die Klarna für ihre Funktionen möglicherweise verwendet, können Sie in Ihrem Browser löschen, deaktivieren oder verwalten. Je nachdem welchen Browser Sie verwenden, funktioniert dies auf unterschiedliche Art und Weise. Die folgenden Anleitungen zeigen, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wir bieten im Rahmen von vertraglichen bzw. rechtlichen Beziehungen, wegen gesetzlicher Pflichten (Art. 6 Abs. 1 lit. c DSGVO) und auf Grundlage des berechtigten Interesses (Art. 6 Abs. 1 lit.f DSGVO) neben Bank-/Kreditinstitutionen auch den Zahlungsdienstleister Klarna Checkout an.

Wir hoffen Ihnen einen guten Überblick über die Datenverarbeitung durch Klarna geboten zu haben. Wenn Sie mehr über den Umgang mit Ihren Daten erfahren wollen, empfehlen wir Ihnen die Klarna-Datenschutzerklärung unter https://cdn.klarna.com/1.0/shared/content/legal/terms/0/de_at/privacy.

 

Sofortüberweisung Datenschutzerklärung
Sofortüberweisung Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung des Zahlungsvorgangs auf unserer Website
📓 Verarbeitete Daten: Daten wie etwa Name, Adresse, Bankdaten (Kontonummer, Kreditkartennummer, Passwörter, TANs usw.), IP-Adresse und Vertragsdaten
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung
📅 Speicherdauer: Daten werden innerhalb der rechtlichen Aufbewahrungspflicht gespeichert
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. c DSGVO (Rechtliche Verpflichtung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist eine „Sofortüberweisung“?
Wir bieten auf unserer Website die Zahlungsmethode „Sofortüberweisung“ des Unternehmens Sofort GmbH zur bargeldlosen Bezahlung an. Die Sofort GmbH gehört seit 2014 zum schwedischen Unternehmen Klarna, hat aber ihren Firmensitz in Deutschland, Theresienhöhe 12, 80339 München.

Entscheiden Sie sich für diese Zahlungsmethode werden unter anderem auch personenbezogene Daten an die Sofort GmbH bzw. an Klarna übermittelt, gespeichert und dort verarbeitet. Mit diesem Datenschutztext geben wir Ihnen einen Überblick über die Datenverarbeitung durch die Sofort GmbH.

Bei der Sofortüberweisung handelt es sich um ein Online-Zahlungssystem, das es Ihnen ermöglicht eine Bestellung über Online-Banking durchzuführen. Dabei wird die Zahlungsabwicklung durch die Sofort GmbH durchgeführt und wir erhalten sofort eine Information über die getätigte Zahlung. Diese Methode kann jeder User nutzen, der ein aktives Online-Banking-Konto mit PIN und TAN hat. Nur noch wenige Banken unterstützen diese Zahlungsmethode noch nicht.

Warum verwenden wir „Sofortüberweisung“ auf unserer Website?
Unser Ziel mit unserer Website und unserem eingebundenen Onlineshop ist es, Ihnen das bestmögliche Service zu bieten. Dazu zählt neben dem Gesamterlebnis auf der Website und neben unseren Angeboten auch eine reibungslose, schnelle und sichere Zahlungsabwicklung Ihrer Bestellungen. Um das zu gewährleisten, nutzen wir „Sofortüberweisung“ als Zahlungssystem.

Welche Daten werden von „Sofortüberweisung“ gespeichert?
Wenn Sie über den Sofort/Klarna-Dienst eine Sofortüberweisung durchführen, werden Daten wie Name, Kontonummer, Bankleitzahl, Betreff, Betrag und Datum auf den Servern des Unternehmens gespeichert. Diese Informationen erhalten auch wir über die Zahlungsbestätigung.

Im Rahmen der Kontodeckungsprüfung überprüft die Sofort GmbH, ob Ihr Kontostand und Überziehungskreditrahmen den Zahlungsbetrag abdeckt. In manchen Fällen wird auch überprüft, ob in den letzten 30 Tagen Sofortüberweisungen erfolgreich durchgeführt wurden. Weiters wird Ihre User-Identifikation (wie etwa Verfügernummer oder Vertragsnummer) in gekürzter („gehashter“) Form und Ihre IP-Adresse erhoben und gespeichert. Bei SEPA-Überweisungen wird auch BIC und IBAN gespeichert.

Laut dem Unternehmen werden sonst keine weiteren personenbezogenen Daten (wie Kontostände, Umsatzdaten, Verfügungsrahmen, Kontolisten, Mobiltelefonnummer, Authentifizierungszertifikate, Sicherheitscodses oder PIN/TAN) erhoben, gespeichert oder an Dritte weitergegeben.

Sofortüberweisung nutzt auch Cookies, um den eigenen Dienst benutzerfreundlicher zu gestalten. Wenn Sie ein Produkt bestellen, werden Sie auf die Sofort bzw. Klarna-Website umgeleitet. Nach der erfolgreichen Zahlung werden Sie auf unsere Dankesseite weitergeleitet. Hier werden folgende drei Cookies gesetzt:

Name: SOFUEB
Wert: e8cipp378mdscn9e17kajlfhv7311284247-5
Verwendungszweck: Dieses Cookie speichert Ihre Session-ID.
Ablaufdatum: nach Beenden der Browsersitzung

Name: User[user_cookie_rules] Wert: 1
Verwendungszweck: Dieses Cookie speichert Ihre Zustimmung zur Verwendung von Cookies.
Ablaufdatum: nach 10 Jahren

Name: _ga
Wert: GA1.2.69759879.1589470706
Verwendungszweck: Standardmäßig verwendet analytics.js das Cookie _ga, um die User-ID zu speichern. Grundsätzlich dient es zur Unterscheidung der Webseitenbesucher. Hier handelt es sich um ein Cookie von Google Analytics.
Ablaufdatum: nach 2 Jahren

Anmerkung: Die hier angeführten Cookies erheben keinen Anspruch auch Vollständigkeit. Es kann immer sein, dass Sofortüberweisung auch andere Cookies verwendet.

Wie lange und wo werden die Daten gespeichert?
Alle erhobenen Daten werden innerhalb der rechtlichen Aufbewahrungspflicht gespeichert. Diese Pflicht kann zwischen drei und zehn Jahren dauern.

Klarna/Sofort GmbH versucht Daten nur innerhalb der EU bzw. des Europäischen Wirtschaftsraums (EWR) zu speichern. Wenn Daten außerhalb des EU/EWR übertragen werden, muss der Datenschutz mit der DSGVO übereinstimmen und das Land in einer Angemessenheitsentscheidung der EU stehen.

Wie kann ich meine Daten löschen oder die Datenspeicherung verhindern?
Sie können Ihre Einwilligung, dass Klarna personenbezogene Daten verarbeitet jederzeit widerrufen. Sie haben auch immer das Recht auf Auskunft, Berichtigung und Löschung Ihrer personenbezogenen Daten. Dafür können Sie einfach das Datenschutzteam des Unternehmens per E-Mail an datenschutz@sofort.com kontaktieren.

Mögliche Cookies, die Sofortüberweisung verwendet, können Sie in Ihrem Browser verwalten, löschen oder deaktivieren. Abhängig von Ihrem bevorzugten Browser funktioniert das auf unterschiedliche Weise. Die folgenden Anleitungen zeigen wie Sie Cookies in den gängigsten Browsern verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wir bieten im Rahmen von vertraglichen bzw. rechtlichen Beziehungen, wegen gesetzlicher Pflichten (Art. 6 Abs. 1 lit. c DSGVO) und auf Grundlage des berechtigten Interesses (Art. 6 Abs. 1 lit.f DSGVO) neben Bank-/Kreditinstitutionen auch den Zahlungsdienstleister Sofortüberweisung an.

Wenn Sie mehr über die Datenverarbeitung durch die „Sofortüberweisung“ des Unternehmens Sofort GmbH erfahren wollen, empfehlen wir Ihnen die Datenschutzerklärung unter https://www.sofort.de/datenschutz.html.

Stripe Datenschutzerklärung
Stripe Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung des Zahlungsvorgangs auf unserer Website
📓 Verarbeitete Daten: Daten wie etwa Name, Adresse, Bankdaten (Kontonummer, Kreditkartennummer, Passwörter, TANs usw.), IP-Adresse und Vertragsdaten
Mehr Details dazu finden Sie weiter unter in dieser Datenschutzerklärung
📅 Speicherdauer: Daten werden gespeichert, bis die Zusammenarbeit mit Stripe aufgelöst wird
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. c DSGVO (Rechtliche Verpflichtung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Stripe?
Wir verwenden auf unserer Website ein Zahlungstool des amerikanischen Technologieunternehmens und Online-Bezahldienstes Stripe. Für Kunden innerhalb von der EU ist Stripe Payments Europe (Europe Ltd., 1 Grand Canal Street Lower, Grand Canal Dock, Dublin, Irland) verantwortlich. Das heißt, wenn Sie sich für Stripe als Zahlungsart entscheiden, wird Ihre Zahlung über Stripe Payments abgewickelt. Dabei werden Daten, die für den Zahlungsvorgang nötig sind, an Stripe weitergeleitet und gespeichert. In dieser Datenschutzerklärung geben wir Ihnen einen Überblick über diese Datenverarbeitung und Speicherung durch Stripe und erklären, warum wir Stripe auf unserer Website verwenden.

Das Technologieunternehmen Stripe bietet Zahlungslösungen für Online-Bezahlungen an. Mit Stripe ist es möglich Kredit- und Debitkartenzahlungen in unserem Webshop zu akzeptieren. Stripe übernimmt den gesamten Zahlungsvorgang. Ein großer Vorteil von Stripe ist etwa, dass Sie während des Zahlungsvorgangs nie unsere Website bzw. den Shop verlassen müssen und die Zahlungsabwicklung sehr schnell erfolgt.

Warum verwenden wir Stripe für unsere Website?
Wir wollen natürlich mit unserer Website und unserem eingebundenen Onlineshop das bestmögliche Service bietet, damit Sie sich auf unserer Seite wohl fühlen und unsere Angebote nutzen. Wir wissen, dass Ihre Zeit kostbar ist und daher speziell Zahlungsabwicklungen schnell und reibungslos funktionieren müssen. Neben unseren anderen Zahlungsanbietern haben wir mit Stripe einen Partner gefunden, der eine sichere und schnelle Zahlungsabwicklung gewährleistet.

Welche Daten werden von Stripe gespeichert?
Wenn Sie sich für Stripe als Zahlungsart entscheiden, werden auch personenbezogene Daten von Ihnen an Stripe übermittelt und dort gespeichert. Dabei handelt es sich um Transaktionsdaten. Zu diesen Daten zählen etwa die Zahlungsmethode (also Kreditkarten- Debitkarten oder Kontonummer), Bankleitzahl, Währung, der Betrag und das Datum der Zahlung. Bei einer Transaktion kann weiters Ihr Name, Ihre E-Mail-Adresse, Ihre Rechnungs- oder Versandadresse und manchmal auch Ihr Transaktionsverlauf übermittelt werden. Diese Daten sind zur Authentifizierung nötig. Weiters kann Stripe zur Betrugsabwehr, der Finanzberichterstattung und um die eigenen Dienste vollständig anbieten zu können, auch neben technischen Daten zu Ihrem Gerät (wie IP-Adresse)  Name, Adresse, Telefonnummer und Ihr Land erfassen.

Stripe verkauft keine Ihrer Daten an unabhängige Dritte, wie etwa Marketingagenturen oder andere Unternehmen, die mit dem Stripe-Unternehmen nichts zu tun haben. Die Daten können aber etwa an interne Abteilungen, einer beschränkten Anzahl externer Stripe-Partner oder zur Einhaltung gesetzlicher Vorschriften weitergeleitet werden. Stripe verwendet zur Erfassung von Daten auch Cookies. Hier finden Sie eine Auswahl an Cookies, die Stripe während des Zahlungsprozesses setzen kann:

Name: m
Wert: edd716e9-d28b-46f7-8a55-e05f1779e84e040456311284247-5
Verwendungszweck: Dieses Cookie erscheint, wenn Sie die Zahlungsmethode auswählen. Es speichert und erkennt, ob Sie über einen PC, ein Tablet oder ein Smartphone auf unsere Website zugreifen.
Ablaufdatum: nach 2 Jahren

Name: __stripe_mid
Wert: fc30f52c-b006-4722-af61-a7419a5b8819875de9311284247-1
Verwendungszweck: Um eine Kreditkartentransaktion durchführen zu können, wird dieses Cookie benötigt. Dazu speichert das Cookie Ihre Sitzungs-ID.
Ablaufdatum: nach einem Jahr

Name: __stripe_sid
Wert: 6fee719a-c67c-4ed2-b583-6a9a50895b122753fe
Verwendungszweck: Auch dieses Cookie speichert Ihre ID und wird für den Zahlungsprozess auf unserer Website durch Stripe verwendet.
Ablaufdatum: nach Ablauf der Sitzung

Wie lange und wo werden die Daten gespeichert?
Personenbezogene Daten werden grundsätzlich für die Dauer der Diensterbringung gespeichert. Das heißt, die Daten werden so lange gespeichert, bis wir die Zusammenarbeit mit Stripe auflösen. Um allerdings die gesetzlichen und behördlichen Pflichten zu erfüllen kann Stripe auch über die Dauer der Diensterbringung personenbezogene Daten speichern. Da Stripe ein weltweit tätiges Unternehmen ist, können die Daten auch in jedem Land, wo Stripe Dienstleistungen anbietet, gespeichert werden. So können auch Daten außerhalb Ihres Landes, zum Beispiel in den USA gespeichert werden.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Sie haben immer das Recht auf Auskunft, Berichtigung und Löschung Ihrer personenbezogenen Daten. Bei Fragen können Sie auch jederzeit das Stripe-Team über https://support.stripe.com/contact/email kontaktieren.

Cookies, die Stripe für ihre Funktionen verwenden, können Sie in Ihrem Browser löschen, deaktivieren oder verwalten. Je nachdem welchen Browser Sie verwenden, funktioniert dies auf unterschiedliche Art und Weise. Bitte beachten Sie aber, dass dann eventuell der Zahlungsvorgang nicht mehr funktioniert. Die folgenden Anleitungen zeigen, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Rechtsgrundlage
Wir bieten im Rahmen von vertraglichen bzw. rechtlichen Beziehungen, wegen gesetzlicher Pflichten (Art. 6 Abs. 1 lit. c DSGVO) und auf Grundlage des berechtigten Interesses (Art. 6 Abs. 1 lit.f DSGVO) neben Bank-/Kreditinstitutionen auch den Zahlungsdienstleister Stripe an.

Wir haben Ihnen nun einen allgemeinen Überblick über die Verarbeitung und Speicherung der Daten durch Stripe gegeben. Wenn Sie noch mehr und noch genauere Informationen einholen wollen, dient Ihnen die ausführliche Stripe-Datenschutzerklärung unter https://stripe.com/at/privacy als gute Quelle.

YouTube Abonnieren Button Datenschutzerklärung
Wir haben auf unserer Webseite den YouTube Abonnieren Button (engl. „Subscribe-Button“) eingebaut. Sie erkennen den Button meist am klassischen YouTube-Logo. Das Logo zeigt vor rotem Hintergrund in weißer Schrift die Wörter „Abonnieren“ oder „YouTube“ und links davon das weiße „Play-Symbol“. Der Button kann aber auch in einem anderen Design dargestellt sein.

Unser YouTube-Kanal bietet Ihnen immer wieder lustige, interessante oder spannende Videos. Mit dem eingebauten „Abonnieren-Button“ können Sie unseren Kanal direkt von unserer Webseite aus abonnieren und müssen nicht eigens die YouTube-Webseite aufrufen. Wir wollen Ihnen somit den Zugang zu unserem umfassenden Content so einfach wie möglich machen. Bitte beachten Sie, dass YouTube dadurch Daten von Ihnen speichern und verarbeiten kann.

Wenn Sie auf unserer Seite einen eingebauten Abo-Button sehen, setzt YouTube – laut Google – mindestens ein Cookie. Dieses Cookie speichert Ihre IP-Adresse und unsere URL. Auch Informationen über Ihren Browser, Ihren ungefähren Standort und Ihre voreingestellte Sprache kann YouTube so erfahren. Bei unserem Test wurden folgende vier Cookies gesetzt, ohne bei YouTube angemeldet zu sein:

Name: YSC
Wert: b9-CV6ojI5311284247Y
Verwendungszweck: Dieses Cookie registriert eine eindeutige ID, um Statistiken des gesehenen Videos zu speichern.
Ablaufdatum: nach Sitzungsende

Name: PREF
Wert: f1=50000000
Verwendungszweck: Dieses Cookie registriert ebenfalls Ihre eindeutige ID. Google bekommt über PREF Statistiken, wie Sie YouTube-Videos auf unserer Webseite verwenden.
Ablaufdatum: nach 8 Monate

Name: GPS
Wert: 1
Verwendungszweck: Dieses Cookie registriert Ihre eindeutige ID auf mobilen Geräten, um den GPS-Standort zu tracken.
Ablaufdatum: nach 30 Minuten

Name: VISITOR_INFO1_LIVE
Wert: 31128424795Chz8bagyU
Verwendungszweck: Dieses Cookie versucht die Bandbreite des Users auf unseren Webseiten (mit eingebautem YouTube-Video) zu schätzen.
Ablaufdatum: nach 8 Monaten

Anmerkung: Diese Cookies wurden nach einem Test gesetzt und können nicht den Anspruch auf Vollständigkeit erheben.

Wenn Sie in Ihrem YouTube-Konto angemeldet sind, kann YouTube viele Ihrer Handlungen/Interaktionen auf unserer Webseite mit Hilfe von Cookies speichern und Ihrem YouTube-Konto zuordnen. YouTube bekommt dadurch zum Beispiel Informationen wie lange Sie auf unserer Seite surfen, welchen Browsertyp Sie verwenden, welche Bildschirmauflösung Sie bevorzugen oder welche Handlungen Sie ausführen.

YouTube verwendet diese Daten zum einen um die eigenen Dienstleistungen und Angebote zu verbessern, zum anderen um Analysen und Statistiken für Werbetreibende (die Google Ads verwenden) bereitzustellen.

Pinterest Datenschutzerklärung
Wir verwenden auf unserer Seite Buttons und Widgets des Social Media Netzwerks Pinterest, der Firma Pinterest Inc.,808 Brannan Street, San Francisco, CA 94103, USA.

Durch den Aufruf von Seiten die solche Funktionen nutzen werden Daten (IP-Adresse, Browserdaten, Datum und Zeitpunkt, Cookies) an Pinterest übermittelt, gespeichert und ausgewertet.

Widerspruchsrecht
Sie haben auch jederzeit das Recht und die Möglichkeit Ihre Einwilligung zur Verwendung von Cookies bzw. Drittanbietern wie Pinterest zu widerrufen. Das funktioniert entweder über unser Cookie-Management-Tool oder über andere Opt-Out-Funktionen. Zum Bespiel können Sie auch die Datenerfassung durch Cookies verhindern, indem Sie in Ihrem Browser die Cookies verwalten, deaktivieren oder löschen.

Da bei eingebetteten Pinterest-Elementen Cookies zum Einsatz kommen können, empfehlen wir Ihnen auch unsere allgemeine Datenschutzerklärung über Cookies. Um zu erfahren, welche Daten von Ihnen genau gespeichert und verarbeitet werden, sollten Sie die Datenschutzerklärungen der jeweiligen Tools durchlesen.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Die Datenschutzrichtlinien, welche Informationen Pinterest sammelt und wie sie diese verwenden finden Sie auf https://policy.pinterest.com/de/privacy-policy.

Facebook Datenschutzerklärung
Facebook Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Kundendaten, Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse.
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: bis die Daten für Facebooks Zwecke nicht mehr nützlich sind
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was sind Facebook-Tools?
Wir verwenden auf unserer Webseite ausgewählte Tools von Facebook. Facebook ist ein Social Media Network des Unternehmens Facebook Ireland Ltd., 4 Grand Canal Square, Grand Canal Harbour, Dublin 2 Ireland. Mithilfe dieser Tools können wir Ihnen und Menschen, die sich für unsere Produkte und Dienstleistungen interessieren, das bestmögliche Angebot bieten. Im Folgenden geben wir einen Überblick über die verschiedenen Facebook Tools, welche Daten an Facebook gesendet werden und wie Sie diese Daten löschen können.

Neben vielen anderen Produkten bietet Facebook auch die sogenannten “Facebook Business Tools” an. Das ist die offizielle Bezeichnung von Facebook. Da der Begriff aber kaum bekannt ist, haben wir uns dafür entschieden, sie lediglich Facebook-Tools zu nennen. Darunter finden sich unter anderem:

Facebook-Pixel
soziale Plug-ins (wie z.B der „Gefällt mir“- oder „Teilen“-Button)
Facebook Login
Account Kit
APIs (Programmierschnittstelle)
SDKs (Sammlung von Programmierwerkzeugen)
Plattform-Integrationen
Plugins
Codes
Spezifikationen
Dokumentationen
Technologien und Dienstleistungen
Durch diese Tools erweitert Facebook Dienstleistungen und hat die Möglichkeit, Informationen über User-Aktivitäten außerhalb von Facebook zu erhalten.

Warum verwenden wir Facebook-Tools auf unserer Website?
Wir wollen unsere Dienstleistungen und Produkte nur Menschen zeigen, die sich auch wirklich dafür interessieren. Mithilfe von Werbeanzeigen (Facebook-Ads) können wir genau diese Menschen erreichen. Damit den Usern passende Werbung gezeigt werden kann, benötigt Facebook allerdings Informationen über die Wünsche und Bedürfnisse der Menschen. So werden dem Unternehmen Informationen über das Userverhalten (und Kontaktdaten) auf unserer Webseite zur Verfügung gestellt. Dadurch sammelt Facebook bessere User-Daten und kann interessierten Menschen die passende Werbung über unsere Produkte bzw. Dienstleistungen anzeigen. Die Tools ermöglichen somit maßgeschneiderte Werbekampagnen auf Facebook.

Daten über Ihr Verhalten auf unserer Webseite nennt Facebook „Event-Daten“. Diese werden auch für Messungs- und Analysedienste verwendet. Facebook kann so in unserem Auftrag „Kampagnenberichte“ über die Wirkung unserer Werbekampagnen erstellen. Weiters bekommen wir durch Analysen einen besseren Einblick, wie Sie unsere Dienstleistungen, Webseite oder Produkte verwenden. Dadurch optimieren wir mit einigen dieser Tools Ihre Nutzererfahrung auf unserer Webseite. Beispielsweise können Sie mit den sozialen Plug-ins Inhalte auf unserer Seite direkt auf Facebook teilen.

Welche Daten werden von Facebook-Tools gespeichert?
Durch die Nutzung einzelner Facebook-Tools können personenbezogene Daten (Kundendaten) an Facebook gesendet werden. Abhängig von den benutzten Tools können Kundendaten wie Name, Adresse, Telefonnummer und IP-Adresse versandt werden.

Facebook verwendet diese Informationen, um die Daten mit den Daten, die es selbst von Ihnen hat (sofern Sie Facebook-Mitglied sind) abzugleichen. Bevor Kundendaten an Facebook übermittelt werden, erfolgt ein sogenanntes „Hashing“. Das bedeutet, dass ein beliebig großer Datensatz in eine Zeichenkette transformiert wird. Dies dient auch der Verschlüsselung von Daten.

Neben den Kontaktdaten werden auch „Event-Daten“ übermittelt. Unter „Event-Daten“ sind jene Informationen gemeint, die wir über Sie auf unserer Webseite erhalten. Zum Beispiel, welche Unterseiten Sie besuchen oder welche Produkte Sie bei uns kaufen. Facebook teilt die erhaltenen Informationen nicht mit Drittanbietern (wie beispielsweise Werbetreibende), außer das Unternehmen hat eine explizite Genehmigung oder ist rechtlich dazu verpflichtet. „Event-Daten“ können auch mit Kontaktdaten verbunden werden. Dadurch kann Facebook bessere personalisierte Werbung anbieten. Nach dem bereits erwähnten Abgleichungsprozess löscht Facebook die Kontaktdaten wieder.

Um Werbeanzeigen optimiert ausliefern zu können, verwendet Facebook die Event-Daten nur, wenn diese mit anderen Daten (die auf andere Weise von Facebook erfasst wurden) zusammengefasst wurden. Diese Event-Daten nützt Facebook auch für Sicherheits-, Schutz-, Entwicklungs- und Forschungszwecke. Viele dieser Daten werden über Cookies zu Facebook übertragen. Cookies sind kleine Text-Dateien, die zum Speichern von Daten bzw. Informationen in Browsern verwendet werden. Je nach verwendeten Tools und abhängig davon, ob Sie Facebook-Mitglied sind, werden unterschiedlich viele Cookies in Ihrem Browser angelegt. In den Beschreibungen der einzelnen Facebook Tools gehen wir näher auf einzelne Facebook-Cookies ein. Allgemeine Informationen über die Verwendung von Facebook-Cookies erfahren Sie auch auf https://www.facebook.com/policies/cookies.

Wie lange und wo werden die Daten gespeichert?
Grundsätzlich speichert Facebook Daten bis sie nicht mehr für die eigenen Dienste und Facebook-Produkte benötigt werden. Facebook hat auf der ganzen Welt Server verteilt, wo seine Daten gespeichert werden. Kundendaten werden allerdings, nachdem sie mit den eigenen Userdaten abgeglichen wurden, innerhalb von 48 Stunden gelöscht.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Entsprechend der Datenschutz Grundverordnung haben Sie das Recht auf Auskunft, Berichtigung, Übertragbarkeit und Löschung Ihrer Daten.

Eine komplette Löschung der Daten erfolgt nur, wenn Sie Ihr Facebook-Konto vollständig löschen. Und so funktioniert das Löschen Ihres Facebook-Kontos:

1) Klicken Sie rechts bei Facebook auf Einstellungen.

2) Anschließend klicken Sie in der linken Spalte auf „Deine Facebook-Informationen“.

3) Nun klicken Sie “Deaktivierung und Löschung”.

4) Wählen Sie jetzt „Konto löschen“ und klicken Sie dann auf „Weiter und Konto löschen“

5) Geben Sie nun Ihr Passwort ein, klicken Sie auf „Weiter“ und dann auf „Konto löschen“

Die Speicherung der Daten, die Facebook über unsere Seite erhält, erfolgt unter anderem über Cookies (z.B. bei sozialen Plugins). In Ihrem Browser können Sie einzelne oder alle Cookies deaktivieren, löschen oder verwalten. Je nach dem welchen Browser Sie verwenden, funktioniert dies auf unterschiedliche Art und Weise. Die folgenden Anleitungen zeigen, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Falls Sie grundsätzlich keine Cookies haben wollen, können Sie Ihren Browser so einrichten, dass er Sie immer informiert, wenn ein Cookie gesetzt werden soll. So können Sie bei jedem einzelnen Cookie entscheiden, ob Sie es erlauben oder nicht.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wir hoffen wir haben Ihnen die wichtigsten Informationen über die Nutzung und Datenverarbeitung durch die Facebook-Tools nähergebracht. Wenn Sie mehr darüber erfahren wollen, wie Facebook Ihre Daten verwendet, empfehlen wir Ihnen die Datenrichtlinien auf https://www.facebook.com/about/privacy/update.

Instagram Datenschutzerklärung
Instagram Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse.
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: bis Instagram die Daten für ihre Zwecke nicht mehr benötigt
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Instagram?
Wir haben auf unserer Webseite Funktionen von Instagram eingebaut. Instagram ist eine Social Media Plattform des Unternehmens Instagram LLC, 1601 Willow Rd, Menlo Park CA 94025, USA. Instagram ist seit 2012 ein Tochterunternehmen von Facebook Inc. und gehört zu den Facebook-Produkten. Das Einbetten von Instagram-Inhalten auf unserer Webseite nennt man Embedding. Dadurch können wir Ihnen Inhalte wie Buttons, Fotos oder Videos von Instagram direkt auf unserer Webseite zeigen. Wenn Sie Webseiten unserer Webpräsenz aufrufen, die eine Instagram-Funktion integriert haben, werden Daten an Instagram übermittelt, gespeichert und verarbeitet. Instagram verwendet dieselben Systeme und Technologien wie Facebook. Ihre Daten werden somit über alle Facebook-Firmen hinweg verarbeitet.

Im Folgenden wollen wir Ihnen einen genaueren Einblick geben, warum Instagram Daten sammelt, um welche Daten es sich handelt und wie Sie die Datenverarbeitung weitgehend kontrollieren können. Da Instagram zu Facebook Inc. gehört, beziehen wir unsere Informationen einerseits von den Instagram-Richtlinien, andererseits allerdings auch von den Facebook-Datenrichtlinien selbst.

Instagram ist eines der bekanntesten Social Media Netzwerken weltweit. Instagram kombiniert die Vorteile eines Blogs mit den Vorteilen von audiovisuellen Plattformen wie YouTube oder Vimeo. Sie können auf „Insta“ (wie viele der User die Plattform salopp nennen) Fotos und kurze Videos hochladen, mit verschiedenen Filtern bearbeiten und auch in anderen sozialen Netzwerken verbreiten. Und wenn Sie selbst nicht aktiv sein wollen, können Sie auch nur anderen interessante Users folgen.

Warum verwenden wir Instagram auf unserer Website?
Instagram ist jene Social Media Plattform, die in den letzten Jahren so richtig durch die Decke ging. Und natürlich haben auch wir auf diesen Boom reagiert. Wir wollen, dass Sie sich auf unserer Webseite so wohl wie möglich fühlen. Darum ist für uns eine abwechslungsreiche Aufbereitung unserer Inhalte selbstverständlich. Durch die eingebetteten Instagram-Funktionen können wir unseren Content mit hilfreichen, lustigen oder spannenden Inhalten aus der Instagram-Welt bereichern. Da Instagram eine Tochtergesellschaft von Facebook ist, können uns die erhobenen Daten auch für personalisierte Werbung auf Facebook dienlich sein. So bekommen unsere Werbeanzeigen nur Menschen, die sich wirklich für unsere Produkte oder Dienstleistungen interessieren.

Instagram nützt die gesammelten Daten auch zu Messungs- und Analysezwecken. Wir bekommen zusammengefasste Statistiken und so mehr Einblick über Ihre Wünsche und Interessen. Wichtig ist zu erwähnen, dass diese Berichte Sie nicht persönlich identifizieren.

Welche Daten werden von Instagram gespeichert?
Wenn Sie auf eine unserer Seiten stoßen, die Instagram-Funktionen (wie Instagrambilder oder Plug-ins) eingebaut haben, setzt sich Ihr Browser automatisch mit den Servern von Instagram in Verbindung. Dabei werden Daten an Instagram versandt, gespeichert und verarbeitet. Und zwar unabhängig, ob Sie ein Instagram-Konto haben oder nicht. Dazu zählen Informationen über unserer Webseite, über Ihren Computer, über getätigte Käufe, über Werbeanzeigen, die Sie sehen und wie Sie unser Angebot nutzen. Weiters werden auch Datum und Uhrzeit Ihrer Interaktion mit Instagram gespeichert. Wenn Sie ein Instagram-Konto haben bzw. eingeloggt sind, speichert Instagram deutlich mehr Daten über Sie.

Facebook unterscheidet zwischen Kundendaten und Eventdaten. Wir gehen davon aus, dass dies bei Instagram genau so der Fall ist. Kundendaten sind zum Beispiel Name, Adresse, Telefonnummer und IP-Adresse. Diese Kundendaten werden erst an Instagram übermittelt werden, wenn Sie zuvor „gehasht“ wurden. Hashing meint, ein Datensatz wird in eine Zeichenkette verwandelt. Dadurch kann man die Kontaktdaten verschlüsseln. Zudem werden auch die oben genannten „Event-Daten“ übermittelt. Unter „Event-Daten“ versteht Facebook – und folglich auch Instagram – Daten über Ihr Userverhalten. Es kann auch vorkommen, dass Kontaktdaten mit Event-Daten kombiniert werden. Die erhobenen Kontaktdaten werden mit den Daten, die Instagram bereits von Ihnen hat, abgeglichen.

Über kleine Text-Dateien (Cookies), die meist in Ihrem Browser gesetzt werden, werden die gesammelten Daten an Facebook übermittelt. Je nach verwendeten Instagram-Funktionen und ob Sie selbst ein Instagram-Konto haben, werden unterschiedlich viele Daten gespeichert.

Wir gehen davon aus, dass bei Instagram die Datenverarbeitung gleich funktioniert wie bei Facebook. Das bedeutet: wenn Sie ein Instagram-Konto haben oder www.instagram.com besucht haben, hat Instagram zumindest ein Cookie gesetzt. Wenn das der Fall ist, sendet Ihr Browser über das Cookie Infos an Instagram, sobald Sie mit einer Instagram-Funktion in Berührung kommen. Spätestens nach 90 Tagen (nach Abgleichung) werden diese Daten wieder gelöscht bzw. anonymisiert. Obwohl wir uns intensiv mit der Datenverarbeitung von Instagram beschäftigt haben, können wir nicht ganz genau sagen, welche Daten Instagram exakt sammelt und speichert.

Im Folgenden zeigen wir Ihnen Cookies, die in Ihrem Browser mindestens gesetzt werden, wenn Sie auf eine Instagram-Funktion (wie z.B. Button oder ein Insta-Bild) klicken. Bei unserem Test gehen wir davon aus, dass Sie kein Instagram-Konto haben. Wenn Sie bei Instagram eingeloggt sind, werden natürlich deutlich mehr Cookies in Ihrem Browser gesetzt.

Diese Cookies wurden bei unserem Test verwendet:

Name: csrftoken
Wert: “”
Verwendungszweck: Dieses Cookie wird mit hoher Wahrscheinlichkeit aus Sicherheitsgründen gesetzt, um Fälschungen von Anfragen zu verhindern. Genauer konnten wir das allerdings nicht in Erfahrung bringen.
Ablaufdatum: nach einem Jahr

Name: mid
Wert: “”
Verwendungszweck: Instagram setzt dieses Cookie, um die eigenen Dienstleistungen und Angebote in und außerhalb von Instagram zu optimieren. Das Cookie legt eine eindeutige User-ID fest.
Ablaufdatum: nach Ende der Sitzung

Name: fbsr_311284247124024
Wert: keine Angaben
Verwendungszweck: Dieses Cookie speichert die Log-in-Anfrage für User der Instagram-App.
Ablaufdatum: nach Ende der Sitzung

Name: rur
Wert: ATN
Verwendungszweck: Dabei handelt es sich um ein Instagram-Cookie, das die Funktionalität auf Instagram gewährleistet.
Ablaufdatum: nach Ende der Sitzung

Name: urlgen
Wert: “{“194.96.75.33″: 1901}:1iEtYv:Y833k2_UjKvXgYe311284247”
Verwendungszweck: Dieses Cookie dient den Marketingzwecken von Instagram.
Ablaufdatum: nach Ende der Sitzung

Anmerkung: Wir können hier keinen Vollständigkeitsanspruch erheben. Welche Cookies im individuellen Fall gesetzt werden, hängt von den eingebetteten Funktionen und Ihrer Verwendung von Instagram ab.

Wie lange und wo werden die Daten gespeichert?
Instagram teilt die erhaltenen Informationen zwischen den Facebook-Unternehmen mit externen Partnern und mit Personen, mit denen Sie sich weltweit verbinden. Die Datenverarbeitung erfolgt unter Einhaltung der eigenen Datenrichtlinie. Ihre Daten sind, unter anderem aus Sicherheitsgründen, auf den Facebook-Servern auf der ganzen Welt verteilt. Die meisten dieser Server stehen in den USA.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Dank der Datenschutz Grundverordnung haben Sie das Recht auf Auskunft, Übertragbarkeit, Berichtigung und Löschung Ihrer Daten. In den Instagram-Einstellungen können Sie Ihre Daten verwalten. Wenn Sie Ihre Daten auf Instagram völlig löschen wollen, müssen Sie Ihr Instagram-Konto dauerhaft löschen.

Und so funktioniert die Löschung des Instagram-Kontos:

Öffnen Sie zuerst die Instagram-App. Auf Ihrer Profilseite gehen Sie nach unten und klicken Sie auf „Hilfebereich“. Jetzt kommen Sie auf die Webseite des Unternehmens. Klicken Sie auf der Webseite auf „Verwalten des Kontos“ und dann auf „Dein Konto löschen“.

Wenn Sie Ihr Konto ganz löschen, löscht Instagram Posts wie beispielsweise Ihre Fotos und Status-Updates. Informationen, die andere Personen über Sie geteilt haben, gehören nicht zu Ihrem Konto und werden folglich nicht gelöscht.

Wie bereits oben erwähnt, speichert Instagram Ihre Daten in erster Linie über Cookies. Diese Cookies können Sie in Ihrem Browser verwalten, deaktivieren oder löschen. Abhängig von Ihrem Browser funktioniert die Verwaltung immer ein bisschen anders. Hier zeigen wir Ihnen die Anleitungen der wichtigsten Browser.

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Sie können auch grundsätzlich Ihren Browser so einrichten, dass Sie immer informiert werden, wenn ein Cookie gesetzt werden soll. Dann können Sie immer individuell entscheiden, ob Sie das Cookie zulassen wollen oder nicht.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wir haben versucht, Ihnen die wichtigsten Informationen über die Datenverarbeitung durch Instagram näherzubringen. Auf https://help.instagram.com/519522125107875
können Sie sich noch näher mit den Datenrichtlinien von Instagram auseinandersetzen.

LinkedIn Datenschutzerklärung
LinkedIn Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse.
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: die Daten werden grundsätzlich innerhalb von 30 Tagen gelöscht
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist LinkedIn?
Wir nutzen auf unserer Webseite Social-Plug-ins des Social-Media-Netzwerks LinkedIn, der Firma LinkedIn Corporation, 2029 Stierlin Court, Mountain View, CA 94043, USA. Bei den Social-Plug-ins kann es sich um Feeds, das Teilen von Inhalten oder um die Verlinkung zu unserer LinkedIn-Seite handeln. Die Social-Plug-ins sind eindeutig mit dem bekannten LinkedIn-Logo gekennzeichnet und erlauben beispielsweise interessante Inhalte direkt über unsere Webseite zu teilen. Für den Europäischen Wirtschaftsraum und die Schweiz ist die Firma LinkedIn Ireland Unlimited Company Wilton Place in Dublin für die Datenverarbeitung verantwortlich.

Durch die Einbettung solcher Plug-ins können Daten an LinkedIn versandt, gespeichert und dort verarbeitet werden. In dieser Datenschutzerklärung wollen wir Sie informieren, um welche Daten es sich handelt, wie das Netzwerk diese Daten verwendet und wie Sie die Datenspeicherung verwalten bzw. unterbinden können.

LinkedIn ist das größte soziale Netzwerk für Geschäftskontakte. Anders als beispielsweise bei Facebook konzentriert sich das Unternehmen ausschließlich auf den Aufbau geschäftlicher Kontakte. Unternehmen können auf der Plattform Dienstleistungen und Produkte vorstellen und Geschäftsbeziehungen knüpfen. Viele Menschen verwenden LinkedIn auch für die Jobsuche oder um selbst geeignete Mitarbeiter oder Mitarbeiterinnen für die eigene Firma zu finden. Allein in Deutschland zählt das Netzwerk über 11 Millionen Mitglieder. In Österreich sind es etwa 1,3 Millionen.

Warum verwenden wir LinkedIn auf unserer Website?
Wir wissen wie beschäftigt Sie sind. Da kann man nicht alle Social-Media-Kanäle einzeln verfolgen. Auch wenn es sich, wie in unserem Fall, lohnen würde. Denn immer wieder posten wir interessante News oder Berichte, die es wert sind, verbreitet zu werden. Darum haben wir auf unserer Webseite die Möglichkeit geschaffen, interessante Inhalte direkt auf LinkedIn zu teilen bzw. direkt auf unsere LinkedIn-Seite zu verweisen. Wir betrachten eingebaute Social-Plug-ins als erweiterten Service auf unserer Webseite. Die Daten, die LinkedIn sammelt, helfen uns zudem mögliche Werbemaßnahmen nur Menschen zu zeigen, die sich für unser Angebot interessieren.

Welche Daten werden von LinkedIn gespeichert?
Nur durch die bloße Einbindung der Social-Plug-ins speichert LinkedIn keine persönlichen Daten. LinkedIn nennt diese Daten, die durch Plug-ins generiert werden, passive Impressionen. Wenn Sie aber auf ein Social-Plug-in klicken, um beispielsweise unsere Inhalte zu teilen, speichert die Plattform personenbezogene Daten als sogenannte „aktive Impressionen“. Und zwar unabhängig, ob Sie ein LinkedIn-Konto haben oder nicht. Falls Sie angemeldet sind, werden die erhobenen Daten Ihrem Konto zugeordnet.

Ihr Browser stellt eine direkte Verbindung zu den Servern von LinkedIn her, wenn Sie mit unseren Plug-ins interagieren. So protokolliert das Unternehmen verschiedene Nutzungsdaten. Neben Ihrer IP-Adresse können das beispielsweise Anmeldungsdaten, Gerätinformationen oder Infos über Ihren Internet- bzw. Mobilfunkanbieter sein. Wenn Sie LinkedIn-Dienste über Ihr Smartphone aufrufen, kann auch Ihr Standort (nachdem Sie das erlaubt haben) ermittelt werden. LinkedIn kann diese Daten in „gehashter“ Form auch an dritte Werbetreibende weitergeben. Hashing bedeutet, dass ein Datensatz in eine Zeichenkette verwandelt wird. Dadurch kann man die Daten so verschlüsseln, dass Personen nicht mehr identifiziert werden können.

Die meisten Daten zu Ihrem Userverhalten werden in Cookies gespeichert. Das sind kleine Text-Dateien, die meist in Ihrem Browser gesetzt werden. Weiters kann LinkedIn aber auch Web Beacons, Pixel-Tags, Anzeige-Tags und andere Geräteerkennungen benutzen.

Diverse Tests zeigen auch welche Cookies gesetzt werden, wenn ein User mit einem Social-Plug-in interagiert. Die gefundenen Daten können keinen Vollständigkeitsanspruch erheben und dienen lediglich als Beispiel. Die folgenden Cookies wurden gesetzt, ohne bei LinkedIn angemeldet zu sein:

Name: bcookie
Wert: =2&34aab2aa-2ae1-4d2a-8baf-c2e2d7235c16311284247-
Verwendungszweck: Das Cookie ist ein sogenanntes „Browser-ID-Cookie“ und speichert folglich Ihre Identifikationsnummer (ID).
Ablaufdatum: Nach 2 Jahren

Name: lang
Wert: v=2&lang=de-de
Verwendungszweck: Dieses Cookie speichert Ihre voreingestellte bzw. bevorzugte Sprache.
Ablaufdatum: nach Sitzungsende

Name: lidc
Wert: 1818367:t=1571904767:s=AQF6KNnJ0G311284247…
Verwendungszweck: Dieses Cookie wird zum Routing verwendet. Routing zeichnet die Wege auf, wie Sie zu LinkedIn gekommen sind und wie Sie dort durch die Webseite navigieren.
Ablaufdatum: nach 24 Stunden

Name: rtc
Wert: kt0lrv3NF3x3t6xvDgGrZGDKkX
Verwendungszweck: Zu diesem Cookie konnten keine näheren Informationen in Erfahrung gebracht werden.
Ablaufdatum: nach 2 Minuten

Name: JSESSIONID
Wert: ajax:3112842472900777718326218137
Verwendungszweck: Es handelt sich hier um ein Session-Cookie, das LinkedIn verwendet, um anonyme Benutzersitzungen durch den Server aufrecht zu erhalten.
Ablaufdatum: nach Sitzungsende

Name: bscookie
Wert: “v=1&201910230812…
Verwendungszweck: Bei diesem Cookie handelt es sich um ein Sicherheits-Cookie. LinkedIn beschreibt es als Secure-Browser-ID-Cookie.
Ablaufdatum: nach 2 Jahren

Name: fid
Wert: AQHj7Ii23ZBcqAAAA…
Verwendungszweck: Zu diesem Cookie konnten keine näheren Informationen gefunden werden.
Ablaufdatum: nach 7 Tagen

Anmerkung: LinkedIn arbeitet auch mit Drittanbietern zusammen. Darum haben wir bei unserem Test auch die beiden Google-Analytics-Cookies _ga und _gat erkannt.

Wie lange und wo werden die Daten gespeichert?
Grundsätzlich behaltet LinkedIn Ihre personenbezogenen Daten so lange, wie es das Unternehmen als nötig betrachtet, um die eigenen Dienste anzubieten. LinkedIn löscht aber Ihre personenbezogenen Daten, wenn Sie Ihr Konto löschen. In manchen Ausnahmefällen behaltet LinkedIn selbst nach Ihrer Kontolöschung einige Daten in zusammengefasster und anonymisierter Form. Sobald Sie Ihr Konto löschen, können andere Personen Ihre Daten innerhalb von einem Tag nicht mehr sehen. LinkedIn löscht die Daten grundsätzlich innerhalb von 30 Tagen. LinkedIn behält allerdings Daten, wenn es aus rechtlicher Pflicht notwendig ist. Daten, die keinen Personen mehr zugeordnet werden können, bleiben auch nach Schließung des Kontos gespeichert. Die Daten werden auf verschiedenen Servern in Amerika und vermutlich auch in Europa gespeichert.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben jederzeit das Recht auf Ihre personenbezogenen Daten zuzugreifen und sie auch zu löschen. In Ihrem LinkedIn-Konto können Sie Ihre Daten verwalten, ändern und löschen. Zudem können Sie von LinkedIn auch eine Kopie Ihrer personenbezogenen Daten anfordern.

So greifen Sie auf die Kontodaten in Ihrem LinkedIn-Profil zu:

Klicken Sie in LinkedIn auf Ihr Profilsymbol und wählen Sie die Rubrik „Einstellungen und Datenschutz“. Klicken Sie nun auf „Datenschutz“ und dann im Abschnitt „So verwendet LinkedIn Ihre Daten auf „Ändern“. In nur kurzer Zeit können Sie ausgewählte Daten zu Ihrer Web-Aktivität und Ihrem Kontoverlauf herunterladen.

Sie haben auch in Ihrem Browser die Möglichkeit, die Datenverarbeitung durch LinkedIn zu unterbinden. Wie oben bereits erwähnt, speichert LinkedIn die meisten Daten über Cookies, die in Ihrem Browser gesetzt werden. Diese Cookies können Sie verwalten, deaktivieren oder löschen. Je nachdem, welchen Browser Sie haben, funktioniert die Verwaltung etwas anders. Die Anleitungen der gängigsten Browser finden Sie hier:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Sie können auch grundsätzlich Ihren Browser dahingehend einrichten, dass Sie immer informiert werden, wenn ein Cookie gesetzt werden soll. Dann können Sie immer individuell entscheiden, ob Sie das Cookie zulassen wollen oder nicht.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wir haben versucht, Ihnen die wichtigsten Informationen über die Datenverarbeitung durch LinkedIn näherzubringen. Auf https://www.linkedin.com/legal/privacy-policy erfahren Sie noch mehr über die Datenverarbeitung des Social-Media-Netzwerks LinkedIn.

ShareThis Datenschutzerklärung
ShareThis Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse.
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: die gesammelten Daten werden bis zu 14 Monate gespeichert
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist ShareThis?
Auf unserer Website haben wir Funktionen von ShareThis der Firma ShareThis Inc. (4005 Miranda Ave, Suite 100, Palo Alto, 94304 Kalifornien, USA) eingebaut. Dabei handelt es sich zum Beispiel um “Teilen”-Plug-ins verschiedener Social-Media-Kanäle. Mit Hilfe dieser Funktionen können Sie Inhalte unserer Website auf Social-Media-Kanälen teilen. Wenn Sie eine Webseite mit einer ShareThis-Funktion aufrufen, können Daten von Ihnen an das Unternehmen übertragen, gespeichert und verarbeitet werden. Mit dieser Datenschutzerklärungen erfahren Sie warum wir ShareThis verwenden, welche Daten verarbeitet werden und wie Sie diese Datenübertragung unterbinden können.

ShareThis ist ein Technologieunternehmen, das Websitebetreibern Tools zur Steigerung der Websitequalität anbietet. Durch die Nutzung der Social-Plugins von ShareThis können Sie Inhalte unserer Website in verschiedenen Social-Media-Kanälen wie Facebook, Twitter, Instagram und Co teilen. Das Unternehmen bietet das Teilen von Inhalten für über 40 verschiedene Kanäle an und wird von über 3 Millionen Websitebetreibern weltweit genutzt. Die von ShareThis gesammelten Daten werden auch für individuelle Werbeanzeigen genutzt.

Warum verwenden wir ShareThis auf unserer Website?
Wir wollen mit unserem Content überzeugen und natürlich freuen wir uns, wenn unser Content auch weiterempfohlen wird. Dann wissen wir, wir sind am richtigen Weg. Am einfachsten funktioniert das über „Share/Teilen-Buttons“ direkt auf unserer Website. Durch die Vielzahl an verschiedenen Social-Media-Kanälen kann so unser Content auch einem breiten Publikum präsentiert werden. Das hilft uns im Internet bekannter und erfolgreicher zu werden. Zudem dienen die Plug-ins auch Ihnen, weil Sie mit nur einem Klick, interessante Inhalte mit Ihrer Social-Media-Community teilen können.

Welche Daten werden von ShareThis gespeichert?
Wenn Sie Inhalte mit ShareThis teilen und Sie mit dem jeweiligen Social-Media-Konto angemeldet sind, können Daten wie beispielsweise der Besuch auf unserer Website und das Teilen von Inhalten dem Userkonto des entsprechenden Social-Media-Kanals zugeordnet werden. ShareThis verwendet Cookies, Pixel, HTTP-Header und Browser Identifier, um Daten zu Ihrem Besucherverhalten zu sammeln. Zudem werden manche dieser Daten nach einer Pseudonymisierung mit Dritten geteilt.

Hier eine Liste der möglicherweise verarbeiteten Daten:

Eindeutige ID eines im Webbrowser platzierten Cookies
Allgemeines Klickverhalten
Adressen der besuchten Webseiten
Suchanfragen über die ein Besucher zur Seite mit ShareThis gelangt ist
Navigation von Webseite zu Webseite falls dies über ShareThis Dienste abgelaufen ist
Verweildauer auf einer Webseite
Welche Elemente angeklickt oder hervorgehoben wurden
Die IP-Adresse des Computers oder mobilen Gerätes
Mobile Werbe-IDs (Apple IDFA oder Google AAID)
In HTTP-Headern oder anderen verwendeten Übertragungsprotokollen enthaltene Informationen
Welches Programm auf dem Computer (Browser) oder welches Betriebssystem verwendet wurde (iOS)
ShareThis verwendet Cookies, die wir im Folgenden beispielhaft auflisten. Mehr zu den ShareThis Cookies finden Sie unter https://www.sharethis.com/privacy/.

Name: __unam
Wert: 8961a7f179d1d017ac27lw87qq69V69311284247-5
Verwendungszweck: Dieses Cookie zählt die „Clicks“ und „Shares“ auf einer Webseite.
Ablaufdatum: nach 9 Monaten

Name: __stid
Wert: aGCDwF4hjVEI+oIsABW7311284247Ag==
Verwendungszweck: Dieses Cookie speichert Userverhalten, wie zum Beispiel die aufgerufenen Webseiten, die Navigation von Seite zu Seite und die Verweildauer auf der Webseite.
Ablaufdatum: nach 2 Jahren

Name: __sharethis_cookie_test__
Wert: 0
Verwendungszweck: Dieses Cookie überwacht die „Clickstream“-Aktivität. Das bedeutet es beobachtet wo Sie auf der Webseite geklickt haben.
Ablaufdatum: nach Sitzungsende

Anmerkung: Wir können hier keinen Vollständigkeitsanspruch erheben. Welche Cookies im individuellen Fall gesetzt werden, hängt von den eingebetteten Funktionen und Ihrer Verwendung ab.

Wie lange und wo werden die Daten gespeichert?
ShareThis bewahrt gesammelte Daten für einen Zeitraum von bis zu 14 Monaten ab dem Datum der Datenerfassung auf. ShareThis-Cookies laufen 13 Monate nach der letzten Aktualisierung ab. Da ShareThis ein amerikanisches Unternehmen ist, werden Daten auf amerikanischen ShareThis-Servern übertragen und gespeichert.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Wenn Sie keine Werbung mehr sehen möchten, die auf von ShareThis gesammelten Daten basiert, können Sie den Opt-out-Button auf https://www.sharethis.com/privacy/ verwenden. Dabei wird ein Opt-out-Cookie gesetzt, das Sie nicht löschen dürfen, um diese Einstellung weiterhin zu behalten.

Sie können Ihre Präferenzen für nutzungsbasierte Onlinewerbung auch über http://www.youronlinechoices.com/at/ im Präferenzmanagement festlegen.

Weiters haben Sie auch die Möglichkeit Daten, die über Cookies gespeichert werden, in Ihrem Browser zu verwalten, zu deaktivieren oder zu löschen. Wie die Verwaltung genau funktioniert, hängt von Ihrem Browser ab. Hier finden Sie die Anleitungen zu den momentan bekanntesten Browsern.

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Sie können Ihren Browser auch so einrichten, dass Sie immer informiert werden, wenn ein Cookie gesetzt werden soll.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wenn Sie mehr über die Verarbeitung Ihrer Daten durch ShareThis wissen möchten, finden Sie alle Informationen unter https://www.sharethis.com/privacy/.

Twitter Datenschutzerklärung
Twitter Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse.
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: erhobene Daten von anderen Website löscht Twitter nach spätestens 30 Tagen
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Twitter?
Auf unserer Website haben wir Funktionen von Twitter eingebaut. Dabei handelt es sich zum Beispiel um eingebettete Tweets, Timelines, Buttons oder Hashtags. Twitter ist ein Kurznachrichtendienst und eine Social-Media-Plattform der Firma Twitter Inc., One Cumberland Place, Fenian Street, Dublin 2 D02 AX07, Irland.

Nach unserer Kenntnis werden im Europäischen Wirtschaftsraum und in der Schweiz durch das bloße Einbinden von Twitter-Funktion noch keine personenbezogenen Daten oder Daten zu Ihrer Webaktivitäten an Twitter übertragen. Erst wenn Sie mit den Twitter-Funktionen interagieren, wie zum Beispiel auf einen Button klicken, können Daten an Twitter gesendet, dort gespeichert und verarbeitet werden. Auf diese Datenverarbeitung haben wir keinen Einfluss und tragen keine Verantwortung. Im Rahmen dieser Datenschutzerklärung wollen wir Ihnen einen Überblick geben, welche Daten Twitter speichert, was Twitter mit diesen Daten macht und wie Sie sich vor der Datenübertragung weitgehend schützen können.

Für die einen ist Twitter ein Nachrichtendienst, für andere eine Social-Media-Plattform und wieder andere sprechen von einem Microblogging-Dienst. All diese Bezeichnungen haben ihre Berechtigung und meinen mehr oder weniger dasselbe.

Sowohl Privatpersonen als auch Unternehmen nützen Twitter, um mit interessierten Personen über Kurznachrichten zu kommunizieren. Pro Nachricht erlaubt Twitter nur 280 Zeichen. Diese Nachrichten werden „Tweets“ genannt. Anders als beispielsweise bei Facebook fokussiert sich der Dienst nicht auf den Ausbau eines Netzwerks für “Freunde”, sondern will als weltweite und offene Nachrichten-Plattform verstanden werden. Bei Twitter kann man auch ein anonymes Konto führen und Tweets können einerseits vom Unternehmen, andererseits von den Usern selbst gelöscht werden.

Warum verwenden wir Twitter auf unserer Website?
Wie viele andere Webseiten und Unternehmen versuchen wir unsere Services und Dienstleistungen über verschiedene Kanäle anzubieten und mit unseren Kunden zu kommunizieren. Speziell Twitter ist uns als nützlicher „kleiner“ Nachrichtendienst ans Herz gewachsen. Immer wieder tweeten oder retweeten wir spannende, lustige oder interessante Inhalte. Uns ist klar, dass Sie nicht jedem Kanal extra folgen können. Schließlich haben Sie auch noch etwas anderes zu tun. Darum haben wir auf unserer Webseite auch Twitter-Funktionen eingebunden. Sie können unsere Twitter-Aktivität „vor Ort“ miterleben oder über einen direkten Link zu unserer Twitter-Seite kommen. Durch die Einbindung wollen wir unser Service und die Nutzerfreundlichkeit auf unserer Webseite stärken.

Welche Daten werden von Twitter gespeichert?
Auf manchen unserer Unterseiten finden Sie die eingebauten Twitter-Funktionen. Wenn Sie mit den Twitter-Inhalten interagieren, wie zum Beispiel auf einen Button klicken, kann Twitter Daten erfassen und speichern. Und zwar auch dann, wenn Sie selbst kein Twitter-Konto haben. Twitter nennt diese Daten “Log-Daten”. Dazu zählen demografische Daten, Browser-Cookie-IDs, die ID Ihres Smartphones, gehashte E-Mail-Adressen, und Informationen, welche Seiten Sie bei Twitter besucht haben und welche Handlungen Sie ausgeführt haben. Twitter speichert natürlich mehr Daten, wenn Sie ein Twitter-Konto haben und angemeldet sind. Meistens passiert diese Speicherung über Cookies. Cookies sind kleine Text-Dateien, die meist in Ihrem Browser gesetzt werden und unterschiedliche Information an Twitter übermitteln.

Welche Cookies gesetzt werden, wenn Sie nicht bei Twitter angemeldet sind, aber eine Webseite mit eingebauten Twitter-Funktionen besuchen, zeigen wir Ihnen jetzt. Bitte betrachten Sie diese Aufzählung als Beispiel. Einen Anspruch auf Vollständigkeit können wir hier auf keinen Fall gewährleisten, da sich die Wahl der Cookies stets verändert und von Ihren individuellen Handlungen mit den Twitter-Inhalten abhängt.

Diese Cookies wurden bei unserem Test verwendet:

Name: personalization_id
Wert: “v1_cSJIsogU51SeE311284247”
Verwendungszweck: Dieses Cookie speichert Informationen darüber, wie Sie die Webseite nutzen und über welche Werbung Sie möglicherweise zu Twitter gekommen sind.
Ablaufdatum: nach 2 Jahren

Name: lang
Wert: de
Verwendungszweck: Dieses Cookie speichert Ihre voreingestellte bzw. bevorzugte Sprache.
Ablaufdatum: nach Sitzungsende

Name: guest_id
Wert: 311284247v1%3A157132626
Verwendungszweck: Dieses Cookie wird gesetzt, um Sie als Gast zu identifizieren. 
Ablaufdatum: nach 2 Jahren

Name: fm
Wert: 0
Verwendungszweck: Zu diesem Cookie konnten wir leider den Verwendungszweck nicht in Erfahrung bringen.
Ablaufdatum: nach Sitzungsende

Name: external_referer
Wert: 3112842472beTA0sf5lkMrlGt
Verwendungszweck: Dieses Cookie sammelt anonyme Daten, wie zum Beispiel wie oft Sie Twitter besuchen und wie lange Sie Twitter besuchen.
Ablaufdatum: Nach 6 Tagen

Name: eu_cn
Wert: 1
Verwendungszweck: Dieses Cookie speichert Useraktivität und dient diversen Werbezwecken von Twitter.
Ablaufdatum: Nach einem Jahr

Name: ct0
Wert: c1179f07163a365d2ed7aad84c99d966
Verwendungszweck: Zu diesem Cookie haben wir leider keine Informationen gefunden.
Ablaufdatum: nach 6 Stunden

Name: _twitter_sess
Wert: 53D%253D–dd0248311284247-
Verwendungszweck: Mit diesem Cookie können Sie Funktionen innerhalb der Twitter-Webseite nutzen.
Ablaufdatum: nach Sitzungsende

Anmerkung: Twitter arbeitet auch mit Drittanbietern zusammen. Darum haben wir bei unserem Test auch die drei Google-Analytics-Cookies _ga, _gat, _gid erkannt.

Twitter verwendet die erhobenen Daten einerseits, um das Userverhalten besser zu verstehen und somit seine eigenen Dienste und Werbeangebote zu verbessern, andererseits dienen die Daten auch internen Sicherheitsmaßnahmen.

Wie lange und wo werden die Daten gespeichert?
Wenn Twitter Daten von anderen Websites erhebt, werden diese nach maximal 30 Tagen gelöscht, zusammengefasst oder auf andere Weise verdeckt. Die Twitter-Server liegen auf verschiedenen Serverzentren in den Vereinigten Staaten. Demnach ist davon auszugehen, dass die erhobenen Daten in Amerika gesammelt und gespeichert werden. Nach unserer Recherche konnten wir nicht eindeutig feststellen, ob Twitter auch eigene Server in Europa hat. Grundsätzlich kann Twitter die erhobenen Daten speichern, bis sie dem Unternehmen nicht mehr dienlich sind, Sie die Daten löschen oder eine gesetzliche Löschfrist besteht.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Twitter betont in seinen Datenschutzrichtlinien immer wieder, dass es keine Daten von externen Webseitenbesuchen speichert, wenn Sie bzw. Ihr Browser sich im europäischen Wirtschaftsraum oder in der Schweiz befinden. Falls Sie allerdings mit Twitter direkt interagieren, speichert Twitter selbstverständlich auch Daten von Ihnen.

Wenn Sie ein Twitter-Konto besitzen, können Sie Ihre Daten verwalten, indem Sie unter dem „Profil“-Button auf „Mehr“ klicken. Anschließend klicken Sie auf „Einstellungen und Datenschutz“. Hier können Sie die Datenverarbeitung individuell verwalten.

Wenn Sie kein Twitter-Konto besitzen, können Sie auf twitter.com gehen und dann auf „Individualisierung“ klicken. Unter dem Punkt „Individualisierung und Daten“ können Sie Ihre erhobenen Daten verwalten.

Die meisten Daten werden, wie oben bereits erwähnt, über Cookies gespeichert und die können Sie in Ihrem Browser verwalten, deaktivieren oder löschen. Bitte beachten Sie, dass Sie die Cookies nur in dem von Ihnen gewählten Browser “bearbeiten”. Das heißt: verwenden Sie in Zukunft einen anderen Browser, müssen Sie dort Ihre Cookies erneut nach Ihren Wünschen verwalten. Hier gibt es die Anleitung zur Cookie-Verwaltung der bekanntesten Browser.

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Ihren Browser können Sie auch so verwalten, dass Sie bei jedem einzelnen Cookie informiert werden. Dann können Sie immer individuell entscheiden, ob Sie ein Cookie zulassen oder nicht.

Twitter verwendet die Daten auch für personalisierte Werbung in- und außerhalb von Twitter. In den Einstellungen können Sie unter „Individualisierung und Daten“ die personalisierte Werbung abschalten. Wenn Sie Twitter auf einem Browser nutzen, können Sie die personalisierte Werbung unter http://optout.aboutads.info/?c=2&lang=EN deaktivieren.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wir hoffen, wir haben Ihnen einen grundsätzlichen Überblick über die Datenverarbeitung durch Twitter gegeben. Wir erhalten keinen Daten von Twitter und tragen auch keine Verantwortung darüber, was Twitter mit Ihren Daten macht. Falls Sie noch weitere Fragen zu diesem Thema haben, empfehlen wir Ihnen die Twitter-Datenschutzerklärung unter https://twitter.com/de/privacy.

XING Datenschutzerklärung
Xing Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: es können etwa Ihre IP-Adresse, Browserdaten, Datum und Zeitpunkt Ihres Seitenaufrufs gespeichert werden
Mehr Details dazu finden Sie weiter unten in der Datenschutzerklärung.
📅 Speicherdauer: Daten von Xing-Usern werden gespeichert, bis eine Löschung beantragt wird
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Xing?
Wir benutzen auf unserer Website Social-Plugins des Social-Media-Netzwerks Xing, der Firma Xing SE, Dammtorstraße 30, 20354 Hamburg, Deutschland. Durch diese Funktionen können Sie beispielsweise direkt über unsere Website Inhalte auf Xing teilen, sich über Xing einloggen oder interessanten Inhalten folgen. Sie erkennen die Plug-ins am Unternehmensnamen oder am Xing-Logo. Wenn Sie eine Webseite aufrufen, die ein Xing-Plug-in verwendet, können Daten an die “Xing-Server” übermittelt, gespeichert und ausgewertet werden. In dieser Datenschutzerklärung wollen wir Sie darüber informieren, um welche Daten es sich dabei handelt und wie Sie diese Datenspeicherung verwalten oder verhindern.

Xing ist ein soziales Netzwerk mit dem Hauptsitz in Hamburg. Das Unternehmen hat sich auf das Verwalten von beruflichen Kontakten spezialisiert. Das heißt, anders als bei andere Netzwerken, geht es bei Xing in erster Linie um berufliches Networking. Die Plattform wird oft für die Jobsuche verwendet oder um Mitarbeiter für das eigene Unternehmen zu finden. Darüber hinaus bietet Xing interessanten Content zu verschiedenen beruflichen Themen. Das globale Pendant dazu ist das amerikanische Unternehmen LinkedIn.

Warum verwenden wir Xing auf unserer Website?
Es gibt mittlerweile eine Flut an Social-Media-Kanälen und uns ist durchaus bewusst, dass Ihre Zeit sehr kostbar ist. Nicht jeder Social-Media-Kanal eines Unternehmens kann genau unter die Lupe genommen werden. Daher wollen wir Ihnen das Leben so einfach wie möglich machen, damit Sie interessante Inhalte direkt über unsere Website auf Xing teilen oder folgen können. Mit solchen „Social-Plug-ins“ erweitern wir unser Service auf unserer Website. Darüber hinaus helfen uns die Daten, die von Xing gesammelt werden, auf der Plattform gezielte Werbemaßnahmen durchführen zu können. Das heißt unser Service wird nur Menschen gezeigt, die sich auch wirklich dafür interessieren.

Welche Daten werden von Xing gespeichert?
Xing bietet den Teilen-Button, den Folgen-Button und den Log-in-Button als Plug-in für Websites an. Sobald Sie eine Seite öffnen, wo ein Social-Plug-in von Xing eingebaut ist, verbindet sich Ihr Browser mit Servern in einem von Xing verwendeten Rechenzentrum. Im Falle des Teilen-Buttons sollen – laut Xing – keine Daten gespeichert werden, die einen direkten Bezug auf eine Person herleiten könnten. Insbesondere speichert Xing keine IP-Adresse von Ihnen. Weiters werden im Zusammenhang mit dem Teilen-Button auch keine Cookies gesetzt. Somit findet auch keine Auswertung Ihres Nutzerverhaltens statt. Nähere Informationen dazu erhalten Sie über https://www.xing.com/app/share%3Fop%3Ddata_protection.

Bei den anderen Xing-Plug-ins werden erst Cookies in Ihrem Browser gesetzt, wenn Sie mit dem Plug-in interagieren bzw. darauf klicken. Hier können personenbezogene Daten wie beispielsweise Ihre IP-Adresse, Browserdaten, Datum und Zeitpunkt Ihres Seitenaufrufs bei Xing gespeichert werden. Sollten Sie ein XING-Konto haben und angemeldet sein, werden erhobene Daten Ihrem persönlichen Konto und den darin gespeicherten Daten zugeordnet.

Folgende Cookies werden in Ihrem Browser gesetzt, wenn Sie auf den Folgen bzw. Log-in-Button klicken und noch nicht bei Xing eingeloggt sind. Bitte bedenken Sie, dass es sich hier um eine beispielhafte Liste handelt und wir keinen Anspruch auf Vollständigkeit erheben können:

Name: AMCVS_0894FF2554F733210A4C98C6%40AdobeOrg
Wert: 1
Verwendungszweck: Dieses Cookie wird verwendet, um Identifikationen von Websitebesuchern zu erstellen und zu speichern.
Ablaufdatum: nach Sitzungsende

Name: c_
Wert: 157c609dc9fe7d7ff56064c6de87b019311284247-8
Verwendungszweck: Zu diesem Cookie konnten wir keine näheren Informationen in Erfahrung bringen.
Ablaufdatum: nach einem Tag

Name: prevPage
Wert: wbm%2FWelcome%2Flogin
Verwendungszweck: Dieses Cookie speichert die URL der vorhergehenden Webseite, die Sie besucht haben.
Ablaufdatum: nach 30 Minuten

Name: s_cc
Wert: true
Verwendungszweck: Dieses Adobe Site Catalyst Cookie bestimmt, ob Cookies im Browser grundsätzlich aktiviert sind.
Ablaufdatum: nach Sitzungsende

Name: s_fid
Wert: 6897CDCD1013221C-39DDACC982217CD1311284247-2
Verwendungszweck: Dieses Cookie wird verwendet, um einen eindeutigen Besucher zu identifizieren.
Ablaufdatum: nach 5 Jahren

Name: visitor_id
Wert: fe59fbe5-e9c6-4fca-8776-30d0c1a89c32
Verwendungszweck: Das Besucher-Cookie enthält eine eindeutige Besucher-ID und die eindeutige Kennung für Ihren Account.
Ablaufdatum: nach 2 Jahren

Name:_session_id
Wert: 533a0a6641df82b46383da06ea0e84e7311284247-2
Verwendungszweck: Dieses Cookie erstellt eine vorübergehende Sitzungs-ID, die als In-Session-Benutzer-ID verwendet wird. Das Cookie ist absolut notwendig, um die Funktionen von Xing bereitzustellen.
Ablaufdatum: nach Sitzungsende

Sobald Sie bei Xing eingeloggt bzw. Mitglied sind, werden definitiv weitere personenbezogene Daten erhoben, verarbeitet und gespeichert. Xing gibt auch personenbezogene Daten an Dritte weiter, wenn das für die Erfüllung eigener betriebswirtschaftlicher Zwecke nötig ist, Sie eine Einwilligung erteilt haben oder eine rechtliche Verpflichtung besteht.

Wie lange und wo werden die Daten gespeichert?
Xing speichert die Daten auf verschiedenen Servern in diversen Rechenzentren. Das Unternehmen speichert diese Daten bis Sie die Daten löschen bzw. bis zur Löschung eines Nutzerkontos. Das betrifft natürlich nur User, die bereits Xing-Mitglied sind.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Sie haben jederzeit das Recht auf Ihre personenbezogenen Daten zuzugreifen und sie auch zu löschen. Auch wenn Sie kein Xing-Mitglied sind, können Sie über Ihren Browser eine mögliche Datenverarbeitung unterbinden oder nach Ihren Wünschen verwalten. Die meisten Daten werden über Cookies gespeichert. Je nachdem, welchen Browser Sie haben, funktioniert die Verwaltung etwas anders. Die Anleitungen der gängigsten Browser finden Sie hier:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Sie können auch grundsätzlich Ihren Browser dahingehend einrichten, dass Sie immer informiert werden, wenn ein Cookie gesetzt werden soll. Dann können Sie immer individuell entscheiden, ob Sie das Cookie zulassen wollen oder nicht.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene Social-Media-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. Die meisten Social-Media-Plattformen setzen auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Wir haben versucht, Ihnen die wichtigsten Informationen über die Datenverarbeitung durch Xing näherzubringen. Auf https://privacy.xing.com/de/datenschutzerklaerung erfahren Sie noch mehr über die Datenverarbeitung des Social-Media-Netzwerks Xing.

YouTube Datenschutzerklärung
YouTube Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa Kontaktdaten, Daten zum Nutzerverhalten, Informationen zu Ihrem Gerät und Ihre IP-Adresse können gespeichert werden.
Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: Daten bleiben grundsätzlich gespeichert, solange sie für den Dienstzweck nötig sind
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist YouTube?
Wir haben auf unserer Website YouTube-Videos eingebaut. So können wir Ihnen interessante Videos direkt auf unserer Seite präsentieren. YouTube ist ein Videoportal, das seit 2006 eine Tochterfirma von Google ist. Betrieben wird das Videoportal durch YouTube, LLC, 901 Cherry Ave., San Bruno, CA 94066, USA. Wenn Sie auf unserer Website eine Seite aufrufen, die ein YouTube-Video eingebettet hat, verbindet sich Ihr Browser automatisch mit den Servern von YouTube bzw. Google. Dabei werden (je nach Einstellungen) verschiedene Daten übertragen. Für die gesamte Datenverarbeitung im europäischen Raum ist Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) verantwortlich.

Im Folgenden wollen wir Ihnen genauer erklären, welche Daten verarbeitet werden, warum wir YouTube-Videos eingebunden haben und wie Sie Ihre Daten verwalten oder löschen können.

Auf YouTube können die User kostenlos Videos ansehen, bewerten, kommentieren und selbst hochladen. Über die letzten Jahre wurde YouTube zu einem der wichtigsten Social-Media-Kanäle weltweit. Damit wir Videos auf unserer Webseite anzeigen können, stellt YouTube einen Codeausschnitt zur Verfügung, den wir auf unserer Seite eingebaut haben.

Warum verwenden wir YouTube-Videos auf unserer Website?
YouTube ist die Videoplattform mit den meisten Besuchern und dem besten Content. Wir sind bemüht, Ihnen die bestmögliche User-Erfahrung auf unserer Webseite zu bieten. Und natürlich dürfen interessante Videos dabei nicht fehlen. Mithilfe unserer eingebetteten Videos stellen wir Ihnen neben unseren Texten und Bildern weiteren hilfreichen Content zur Verfügung. Zudem wird unsere Webseite auf der Google-Suchmaschine durch die eingebetteten Videos leichter gefunden. Auch wenn wir über Google Ads Werbeanzeigen schalten, kann Google – dank der gesammelten Daten – diese Anzeigen wirklich nur Menschen zeigen, die sich für unsere Angebote interessieren.

Welche Daten werden von YouTube gespeichert?
Sobald Sie eine unserer Seiten besuchen, die ein YouTube-Video eingebaut hat, setzt YouTube zumindest ein Cookie, das Ihre IP-Adresse und unsere URL speichert. Wenn Sie in Ihrem YouTube-Konto eingeloggt sind, kann YouTube Ihre Interaktionen auf unserer Webseite meist mithilfe von Cookies Ihrem Profil zuordnen. Dazu zählen Daten wie Sitzungsdauer, Absprungrate, ungefährer Standort, technische Informationen wie Browsertyp, Bildschirmauflösung oder Ihr Internetanbieter. Weitere Daten können Kontaktdaten, etwaige Bewertungen, das Teilen von Inhalten über Social Media oder das Hinzufügen zu Ihren Favoriten auf YouTube sein.

Wenn Sie nicht in einem Google-Konto oder einem Youtube-Konto angemeldet sind, speichert Google Daten mit einer eindeutigen Kennung, die mit Ihrem Gerät, Browser oder App verknüpft sind. So bleibt beispielsweise Ihre bevorzugte Spracheinstellung beibehalten. Aber viele Interaktionsdaten können nicht gespeichert werden, da weniger Cookies gesetzt werden.

In der folgenden Liste zeigen wir Cookies, die in einem Test im Browser gesetzt wurden. Wir zeigen einerseits Cookies, die ohne angemeldetes YouTube-Konto gesetzt werden. Andererseits zeigen wir Cookies, die mit angemeldetem Account gesetzt werden. Die Liste kann keinen Vollständigkeitsanspruch erheben, weil die Userdaten immer von den Interaktionen auf YouTube abhängen.

Name: YSC
Wert: b9-CV6ojI5Y311284247-1
Verwendungszweck: Dieses Cookie registriert eine eindeutige ID, um Statistiken des gesehenen Videos zu speichern.
Ablaufdatum: nach Sitzungsende

Name: PREF
Wert: f1=50000000
Verwendungszweck: Dieses Cookie registriert ebenfalls Ihre eindeutige ID. Google bekommt über PREF Statistiken, wie Sie YouTube-Videos auf unserer Webseite verwenden.
Ablaufdatum: nach 8 Monaten

Name: GPS
Wert: 1
Verwendungszweck: Dieses Cookie registriert Ihre eindeutige ID auf mobilen Geräten, um den GPS-Standort zu tracken.
Ablaufdatum: nach 30 Minuten

Name: VISITOR_INFO1_LIVE
Wert: 95Chz8bagyU
Verwendungszweck: Dieses Cookie versucht die Bandbreite des Users auf unseren Webseiten (mit eingebautem YouTube-Video) zu schätzen.
Ablaufdatum: nach 8 Monaten

Weitere Cookies, die gesetzt werden, wenn Sie mit Ihrem YouTube-Konto angemeldet sind:

Name: APISID
Wert: zILlvClZSkqGsSwI/AU1aZI6HY7311284247-
Verwendungszweck: Dieses Cookie wird verwendet, um ein Profil über Ihre Interessen zu erstellen. Genützt werden die Daten für personalisierte Werbeanzeigen.
Ablaufdatum: nach 2 Jahren

Name: CONSENT
Wert: YES+AT.de+20150628-20-0
Verwendungszweck: Das Cookie speichert den Status der Zustimmung eines Users zur Nutzung unterschiedlicher Services von Google. CONSENT dient auch der Sicherheit, um User zu überprüfen und Userdaten vor unbefugten Angriffen zu schützen.
Ablaufdatum: nach 19 Jahren

Name: HSID
Wert: AcRwpgUik9Dveht0I
Verwendungszweck: Dieses Cookie wird verwendet, um ein Profil über Ihre Interessen zu erstellen. Diese Daten helfen personalisierte Werbung anzeigen zu können.
Ablaufdatum: nach 2 Jahren

Name: LOGIN_INFO
Wert: AFmmF2swRQIhALl6aL…
Verwendungszweck: In diesem Cookie werden Informationen über Ihre Login-Daten gespeichert.
Ablaufdatum: nach 2 Jahren

Name: SAPISID
Wert: 7oaPxoG-pZsJuuF5/AnUdDUIsJ9iJz2vdM
Verwendungszweck: Dieses Cookie funktioniert, indem es Ihren Browser und Ihr Gerät eindeutig identifiziert. Es wird verwendet, um ein Profil über Ihre Interessen zu erstellen.
Ablaufdatum: nach 2 Jahren

Name: SID
Wert: oQfNKjAsI311284247-
Verwendungszweck: Dieses Cookie speichert Ihre Google-Konto-ID und Ihren letzten Anmeldezeitpunkt in digital signierter und verschlüsselter Form.
Ablaufdatum: nach 2 Jahren

Name: SIDCC
Wert: AN0-TYuqub2JOcDTyL
Verwendungszweck: Dieses Cookie speichert Informationen, wie Sie die Webseite nutzen und welche Werbung Sie vor dem Besuch auf unserer Seite möglicherweise gesehen haben.
Ablaufdatum: nach 3 Monaten

Wie lange und wo werden die Daten gespeichert?
Die Daten, die YouTube von Ihnen erhält und verarbeitet werden auf den Google-Servern gespeichert. Die meisten dieser Server befinden sich in Amerika. Unter https://www.google.com/about/datacenters/inside/locations/?hl=de  sehen Sie genau wo sich die Google-Rechenzentren befinden. Ihre Daten sind auf den Servern verteilt. So sind die Daten schneller abrufbar und vor Manipulation besser geschützt.

Die erhobenen Daten speichert Google unterschiedlich lang. Manche Daten können Sie jederzeit löschen, andere werden automatisch nach einer begrenzten Zeit gelöscht und wieder andere werden von Google über längere Zeit gespeichert. Einige Daten (wie Elemente aus „Meine Aktivität“, Fotos oder Dokumente, Produkte), die in Ihrem Google-Konto gespeichert sind, bleiben so lange gespeichert, bis Sie sie löschen. Auch wenn Sie nicht in einem Google-Konto angemeldet sind, können Sie einige Daten, die mit Ihrem Gerät, Browser oder App verknüpft sind, löschen.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Grundsätzlich können Sie Daten im Google Konto manuell löschen. Mit der 2019 eingeführten automatischen Löschfunktion von Standort- und Aktivitätsdaten werden Informationen abhängig von Ihrer Entscheidung – entweder 3 oder 18 Monate gespeichert und dann gelöscht.

Unabhängig, ob Sie ein Google-Konto haben oder nicht, können Sie Ihren Browser so konfigurieren, dass Cookies von Google gelöscht bzw. deaktiviert werden. Je nachdem welchen Browser Sie verwenden, funktioniert dies auf unterschiedliche Art und Weise. Die folgenden Anleitungen zeigen, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Falls Sie grundsätzlich keine Cookies haben wollen, können Sie Ihren Browser so einrichten, dass er Sie immer informiert, wenn ein Cookie gesetzt werden soll. So können Sie bei jedem einzelnen Cookie entscheiden, ob Sie es erlauben oder nicht. Da YouTube ein Tochterunternehmen von Google ist, gibt es eine gemeinsame Datenschutzerklärung. Wenn Sie mehr über den Umgang mit Ihren Daten erfahren wollen, empfehlen wir Ihnen die Datenschutzerklärung unter https://policies.google.com/privacy?hl=de.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Daten von Ihnen durch eingebundene YouTube-Elemente verarbeitet und gespeichert werden können, gilt diese Einwilligung als Rechtsgrundlage der Datenverarbeitung (Art. 6 Abs. 1 lit. a DSGVO). Grundsätzlich werden Ihre Daten auch auf Grundlage unseres berechtigten Interesses (Art. 6 Abs. 1 lit. f DSGVO) an einer schnellen und guten Kommunikation mit Ihnen oder anderen Kunden und Geschäftspartnern gespeichert und verarbeitet. YouTube setzt auch Cookies in Ihrem Browser, um Daten zu speichern. Darum empfehlen wir Ihnen, unseren Datenschutztext über Cookies genau durchzulesen und die Datenschutzerklärung oder die Cookie-Richtlinien des jeweiligen Dienstanbieters anzusehen.

Google Fonts Lokal Datenschutzerklärung
Auf unserer Website nutzen wir Google Fonts der Firma Google Inc. Für den europäischen Raum ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) verantwortlich. Wir haben die Google-Schriftarten lokal, d.h. auf unserem Webserver – nicht auf den Servern von Google – eingebunden. Dadurch gibt es keine Verbindung zu Google-Servern und somit auch keine Datenübertragung oder Speicherung.

Was sind Google Fonts?
Früher nannte man Google Fonts auch Google Web Fonts. Dabei handelt es sich um ein interaktives Verzeichnis mit über 800 Schriftarten, die Google kostenlos bereitstellt. Mit Google Fonts könnte man Schriften nutzen, ohne sie auf den eigenen Server hochzuladen. Doch um diesbezüglich jede Informationsübertragung zu Google-Servern zu unterbinden, haben wir die Schriftarten auf unseren Server heruntergeladen. Auf diese Weise handeln wir datenschutzkonform und senden keine Daten an Google Fonts weiter.

Google Maps Datenschutzerklärung
Google Maps Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa eingegebene Suchbegriffe, Ihre IP-Adresse und auch die Breiten- bzw. Längenkoordinaten.
Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: abhängig von den gespeicherten Daten
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist Google Maps?
Wir benützen auf unserer Website Google Maps der Firma Google Inc. Für den europäischen Raum ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) für alle Google-Dienste verantwortlich. Mit Google Maps können wir Ihnen Standorte besser zeigen und damit unser Service an Ihre Bedürfnisse anpassen. Durch die Verwendung von Google Maps werden Daten an Google übertragen und auf den Google-Servern gespeichert. Hier wollen wir nun genauer darauf eingehen, was Google Maps ist, warum wir diesen Google-Dienst in Anspruch nehmen, welche Daten gespeichert werden und wie Sie dies unterbinden können.

Google Maps ist ein Internet-Kartendienst der Firma Google. Mit Google Maps können Sie online über einen PC, ein Tablet oder eine App genaue Standorte von Städten, Sehenswürdigkeiten, Unterkünften oder Unternehmen suchen. Wenn Unternehmen auf Google My Business vertreten sind, werden neben dem Standort noch weitere Informationen über die Firma angezeigt. Um die Anfahrtsmöglichkeit anzuzeigen, können Kartenausschnitte eines Standorts mittels HTML-Code in eine Website eingebunden werden. Google Maps zeigt die Erdoberfläche als Straßenkarte oder als Luft- bzw. Satellitenbild. Dank der Street View Bilder und den hochwertigen Satellitenbildern sind sehr genaue Darstellungen möglich.

Warum verwenden wir Google Maps auf unserer Website?
All unsere Bemühungen auf dieser Seite verfolgen das Ziel, Ihnen eine nützliche und sinnvolle Zeit auf unserer Webseite zu bieten. Durch die Einbindung von Google Maps können wir Ihnen die wichtigsten Informationen zu diversen Standorten liefern. Sie sehen auf einen Blick wo wir unseren Firmensitz haben. Die Wegbeschreibung zeigt Ihnen immer den besten bzw. schnellsten Weg zu uns. Sie können den Anfahrtsweg für Routen mit dem Auto, mit öffentlichen Verkehrsmitteln, zu Fuß oder mit dem Fahrrad abrufen. Für uns ist die Bereitstellung von Google Maps Teil unseres Kundenservice.

Welche Daten werden von Google Maps gespeichert?
Damit Google Maps ihren Dienst vollständig anbieten kann, muss das Unternehmen Daten von Ihnen aufnehmen und speichern. Dazu zählen unter anderem die eingegebenen Suchbegriffe, Ihre IP-Adresse und auch die Breiten- bzw. Längenkoordinaten. Benutzen Sie die Routenplaner-Funktion wird auch die eingegebene Startadresse gespeichert. Diese Datenspeicherung passiert allerdings auf den Webseiten von Google Maps. Wir können Sie darüber nur informieren, aber keinen Einfluss nehmen. Da wir Google Maps in unsere Webseite eingebunden haben, setzt Google mindestens ein Cookie (Name: NID) in Ihrem Browser. Dieses Cookie speichert Daten über Ihr Userverhalten. Google nutzt diese Daten in erster Linie, um eigene Dienste zu optimieren und individuelle, personalisierte Werbung für Sie bereitzustellen.

Folgendes Cookie wird aufgrund der Einbindung von Google Maps in Ihrem Browser gesetzt:

Name: NID
Wert: 188=h26c1Ktha7fCQTx8rXgLyATyITJ311284247-5
Verwendungszweck: NID wird von Google verwendet, um Werbeanzeigen an Ihre Google-Suche anzupassen. Mit Hilfe des Cookies „erinnert“ sich Google an Ihre am häufigsten eingegebenen Suchanfragen oder Ihre frühere Interaktion mit Anzeigen. So bekommen Sie immer maßgeschneiderte Werbeanzeigen. Das Cookie enthält eine einzigartige ID, die Google benutzt, um Ihre persönlichen Einstellungen für Werbezwecke zu sammeln.
Ablaufdatum: nach 6 Monaten

Anmerkung: Wir können bei den Angaben der gespeicherten Daten keine Vollständigkeit gewährleisten. Speziell bei der Verwendung von Cookies sind Veränderungen nie auszuschließen. Um das Cookie NID zu identifizieren, wurde eine eigene Testseite angelegt, wo ausschließlich Google Maps eingebunden war.

Wie lange und wo werden die Daten gespeichert?
Die Google-Server stehen in Rechenzentren auf der ganzen Welt. Die meisten Server befinden sich allerdings in Amerika. Aus diesem Grund werden Ihre Daten auch vermehrt in den USA gespeichert. Hier können Sie genau nachlesen wo sich die Google-Rechenzentren befinden: https://www.google.com/about/datacenters/inside/locations/?hl=de

Die Daten verteilt Google auf verschiedenen Datenträgern. Dadurch sind die Daten schneller abrufbar und werden vor etwaigen Manipulationsversuchen besser geschützt. Jedes Rechenzentrum hat auch spezielle Notfallprogramme. Wenn es zum Beispiel Probleme bei der Google-Hardware gibt oder eine Naturkatastrophe die Server lahm legt, bleiben die Daten ziemlich sicher trotzdem geschützt.

Manche Daten speichert Google für einen festgelegten Zeitraum. Bei anderen Daten bietet Google lediglich die Möglichkeit, diese manuell zu löschen. Weiters anonymisiert das Unternehmen auch Informationen (wie zum Beispiel Werbedaten) in Serverprotokollen, indem es einen Teil der IP-Adresse und Cookie-Informationen nach 9 bzw.18 Monaten löscht.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Mit der 2019 eingeführten automatischen Löschfunktion von Standort- und Aktivitätsdaten werden Informationen zur Standortbestimmung und Web-/App-Aktivität – abhängig von Ihrer Entscheidung – entweder 3 oder 18 Monate gespeichert und dann gelöscht. Zudem kann man diese Daten über das Google-Konto auch jederzeit manuell aus dem Verlauf löschen. Wenn Sie Ihre Standorterfassung vollständig verhindern wollen, müssen Sie im Google-Konto die Rubrik „Web- und App-Aktivität“ pausieren. Klicken Sie „Daten und Personalisierung“ und dann auf die Option „Aktivitätseinstellung“. Hier können Sie die Aktivitäten ein- oder ausschalten.

In Ihrem Browser können Sie weiters auch einzelne Cookies deaktivieren, löschen oder verwalten. Je nach dem welchen Browser Sie verwenden, funktioniert dies immer etwas anders. Die folgenden Anleitungen zeigen, wie Sie Cookies in Ihrem Browser verwalten:

Chrome: Cookies in Chrome löschen, aktivieren und verwalten

Safari: Verwalten von Cookies und Websitedaten mit Safari

Firefox: Cookies löschen, um Daten zu entfernen, die Websites auf Ihrem Computer abgelegt haben

Internet Explorer: Löschen und Verwalten von Cookies

Microsoft Edge: Löschen und Verwalten von Cookies

Falls Sie grundsätzlich keine Cookies haben wollen, können Sie Ihren Browser so einrichten, dass er Sie immer informiert, wenn ein Cookie gesetzt werden soll. So können Sie bei jedem einzelnen Cookie entscheiden, ob Sie es erlauben oder nicht.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Google Maps eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Google Maps vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, Google Maps zu verwenden, um unser Online-Service zu optimieren. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Wenn Sie mehr über die Datenverarbeitung von Google erfahren wollen, empfehlen wir Ihnen die hauseigene Datenschutzerklärung des Unternehmens unter https://policies.google.com/privacy?hl=de.

Google Fonts Datenschutzerklärung
Google Fonts Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung
📓 Verarbeitete Daten: Daten wie etwa IP-Adresse und CSS- und Schrift-Anfragen
Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: Font-Dateien werden bei Google ein Jahr gespeichert
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was sind Google Fonts?
Auf unserer Website verwenden wir Google Fonts. Das sind die “Google-Schriften” der Firma Google Inc. Für den europäischen Raum ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) für alle Google-Dienste verantwortlich.

Für die Verwendung von Google-Schriftarten müssen Sie sich nicht anmelden bzw. ein Passwort hinterlegen. Weiters werden auch keine Cookies in Ihrem Browser gespeichert. Die Dateien (CSS, Schriftarten/Fonts) werden über die Google-Domains fonts.googleapis.com und fonts.gstatic.com angefordert. Laut Google sind die Anfragen nach CSS und Schriften vollkommen getrennt von allen anderen Google-Diensten. Wenn Sie ein Google-Konto haben, brauchen Sie keine Sorge haben, dass Ihre Google-Kontodaten, während der Verwendung von Google Fonts, an Google übermittelt werden. Google erfasst die Nutzung von CSS (Cascading Style Sheets) und der verwendeten Schriftarten und speichert diese Daten sicher. Wie die Datenspeicherung genau aussieht, werden wir uns noch im Detail ansehen.

Google Fonts (früher Google Web Fonts) ist ein Verzeichnis mit über 800 Schriftarten, die Google Ihren Nutzern kostenlos zu Verfügung stellen.

Viele dieser Schriftarten sind unter der SIL Open Font License veröffentlicht, während andere unter der Apache-Lizenz veröffentlicht wurden. Beides sind freie Software-Lizenzen.

Warum verwenden wir Google Fonts auf unserer Website?
Mit Google Fonts können wir auf der eigenen Webseite Schriften nutzen, und müssen sie nicht auf unserem eigenen Server hochladen. Google Fonts ist ein wichtiger Baustein, um die Qualität unserer Webseite hoch zu halten. Alle Google-Schriften sind automatisch für das Web optimiert und dies spart Datenvolumen und ist speziell für die Verwendung bei mobilen Endgeräten ein großer Vorteil. Wenn Sie unsere Seite besuchen, sorgt die niedrige Dateigröße für eine schnelle Ladezeit. Des Weiteren sind Google Fonts sichere Web Fonts. Unterschiedliche Bildsynthese-Systeme (Rendering) in verschiedenen Browsern, Betriebssystemen und mobilen Endgeräten können zu Fehlern führen. Solche Fehler können teilweise Texte bzw. ganze Webseiten optisch verzerren. Dank des schnellen Content Delivery Network (CDN) gibt es mit Google Fonts keine plattformübergreifenden Probleme. Google Fonts unterstützt alle gängigen Browser (Google Chrome, Mozilla Firefox, Apple Safari, Opera) und funktioniert zuverlässig auf den meisten modernen mobilen Betriebssystemen, einschließlich Android 2.2+ und iOS 4.2+ (iPhone, iPad, iPod). Wir verwenden die Google Fonts also, damit wir unser gesamtes Online-Service so schön und einheitlich wie möglich darstellen können.

Welche Daten werden von Google gespeichert?
Wenn Sie unsere Webseite besuchen, werden die Schriften über einen Google-Server nachgeladen. Durch diesen externen Aufruf werden Daten an die Google-Server übermittelt. So erkennt Google auch, dass Sie bzw. Ihre IP-Adresse unsere Webseite besucht. Die Google Fonts API wurde entwickelt, um Verwendung, Speicherung und Erfassung von Endnutzerdaten auf das zu reduzieren, was für eine ordentliche Bereitstellung von Schriften nötig ist. API steht übrigens für „Application Programming Interface“ und dient unter anderem als Datenübermittler im Softwarebereich.

Google Fonts speichert CSS- und Schrift-Anfragen sicher bei Google und ist somit geschützt. Durch die gesammelten Nutzungszahlen kann Google feststellen, wie gut die einzelnen Schriften ankommen. Die Ergebnisse veröffentlicht Google auf internen Analyseseiten, wie beispielsweise Google Analytics. Zudem verwendet Google auch Daten des eigenen Web-Crawlers, um festzustellen, welche Webseiten Google-Schriften verwenden. Diese Daten werden in der BigQuery-Datenbank von Google Fonts veröffentlicht. Unternehmer und Entwickler nützen das Google-Webservice BigQuery, um große Datenmengen untersuchen und bewegen zu können.

Zu bedenken gilt allerdings noch, dass durch jede Google Font Anfrage auch Informationen wie Spracheinstellungen, IP-Adresse, Version des Browsers, Bildschirmauflösung des Browsers und Name des Browsers automatisch an die Google-Server übertragen werden. Ob diese Daten auch gespeichert werden, ist nicht klar feststellbar bzw. wird von Google nicht eindeutig kommuniziert.

Wie lange und wo werden die Daten gespeichert?
Anfragen für CSS-Assets speichert Google einen Tag lang auf seinen Servern, die hauptsächlich außerhalb der EU angesiedelt sind. Das ermöglicht uns, mithilfe eines Google-Stylesheets die Schriftarten zu nutzen. Ein Stylesheet ist eine Formatvorlage, über die man einfach und schnell z.B. das Design bzw. die Schriftart einer Webseite ändern kann.

Die Font-Dateien werden bei Google ein Jahr gespeichert. Google verfolgt damit das Ziel, die Ladezeit von Webseiten grundsätzlich zu verbessern. Wenn Millionen von Webseiten auf die gleichen Schriften verweisen, werden sie nach dem ersten Besuch zwischengespeichert und erscheinen sofort auf allen anderen später besuchten Webseiten wieder. Manchmal aktualisiert Google Schriftdateien, um die Dateigröße zu reduzieren, die Abdeckung von Sprache zu erhöhen und das Design zu verbessern.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Jene Daten, die Google für einen Tag bzw. ein Jahr speichert können nicht einfach gelöscht werden. Die Daten werden beim Seitenaufruf automatisch an Google übermittelt. Um diese Daten vorzeitig löschen zu können, müssen Sie den Google-Support auf https://support.google.com/?hl=de&tid=311284247 kontaktieren. Datenspeicherung verhindern Sie in diesem Fall nur, wenn Sie unsere Seite nicht besuchen.

Anders als andere Web-Schriften erlaubt uns Google uneingeschränkten Zugriff auf alle Schriftarten. Wir können also unlimitiert auf ein Meer an Schriftarten zugreifen und so das Optimum für unsere Webseite rausholen. Mehr zu Google Fonts und weiteren Fragen finden Sie auf https://developers.google.com/fonts/faq?tid=311284247. Dort geht zwar Google auf datenschutzrelevante Angelegenheiten ein, doch wirklich detaillierte Informationen über Datenspeicherung sind nicht enthalten. Es ist relativ schwierig, von Google wirklich präzise Informationen über gespeicherten Daten zu bekommen.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Google Fonts eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Google Fonts vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, Google Font zu verwenden, um unser Online-Service zu optimieren. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Welche Daten grundsätzlich von Google erfasst werden und wofür diese Daten verwendet werden, können Sie auch auf https://www.google.com/intl/de/policies/privacy/ nachlesen.

Google reCAPTCHA Datenschutzerklärung
Google reCAPTCHA Datenschutzerklärung Zusammenfassung
👥 Betroffene: Besucher der Website
🤝 Zweck: Optimierung unserer Serviceleistung und Schutz vor Cyberangriffen
📓 Verarbeitete Daten: Daten wie etwa IP-Adresse, Browserinformationen, Ihr Betriebssystem, eingeschränkte Standorts- und Nutzungsdaten
Mehr Details dazu finden Sie weiter unten in dieser Datenschutzerklärung.
📅 Speicherdauer: abhängig von den gespeicherten Daten
⚖️ Rechtsgrundlagen: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung), Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen)
Was ist reCAPTCHA?
Unser oberstes Ziel ist es, unsere Webseite für Sie und für uns bestmöglich zu sichern und zu schützen. Um das zu gewährleisten, verwenden wir Google reCAPTCHA der Firma Google Inc. Für den europäischen Raum ist das Unternehmen Google Ireland Limited (Gordon House, Barrow Street Dublin 4, Irland) für alle Google-Dienste verantwortlich. Mit reCAPTCHA können wir feststellen, ob Sie auch wirklich ein Mensch aus Fleisch und Blut sind und kein Roboter oder eine andere Spam-Software. Unter Spam verstehen wir jede, auf elektronischen Weg, unerwünschte Information, die uns ungefragter Weise zukommt. Bei den klassischen CAPTCHAS mussten Sie zur Überprüfung meist Text- oder Bildrätsel lösen. Mit reCAPTCHA von Google müssen wir Sie meist nicht mit solchen Rätseln belästigen. Hier reicht es in den meisten Fällen, wenn Sie einfach ein Häkchen setzen und so bestätigen, dass Sie kein Bot sind. Mit der neuen Invisible reCAPTCHA Version müssen Sie nicht mal mehr ein Häkchen setzen. Wie das genau funktioniert und vor allem welche Daten dafür verwendet werden, erfahren Sie im Verlauf dieser Datenschutzerklärung.

reCAPTCHA ist ein freier Captcha-Dienst von Google, der Webseiten vor Spam-Software und den Missbrauch durch nicht-menschliche Besucher schützt. Am häufigsten wird dieser Dienst verwendet, wenn Sie Formulare im Internet ausfüllen. Ein Captcha-Dienst ist eine Art automatischer Turing-Test, der sicherstellen soll, dass eine Handlung im Internet von einem Menschen und nicht von einem Bot vorgenommen wird. Im klassischen Turing-Test (benannt nach dem Informatiker Alan Turing) stellt ein Mensch die Unterscheidung zwischen Bot und Mensch fest. Bei Captchas übernimmt das auch der Computer bzw. ein Softwareprogramm. Klassische Captchas arbeiten mit kleinen Aufgaben, die für Menschen leicht zu lösen sind, doch für Maschinen erhebliche Schwierigkeiten aufweisen. Bei reCAPTCHA müssen Sie aktiv keine Rätsel mehr lösen. Das Tool verwendet moderne Risikotechniken, um Menschen von Bots zu unterscheiden. Hier müssen Sie nur noch das Textfeld „Ich bin kein Roboter“ ankreuzen bzw. bei Invisible reCAPTCHA ist selbst das nicht mehr nötig. Bei reCAPTCHA wird ein JavaScript-Element in den Quelltext eingebunden und dann läuft das Tool im Hintergrund und analysiert Ihr Benutzerverhalten. Aus diesen Useraktionen berechnet die Software einen sogenannten Captcha-Score. Google berechnet mit diesem Score schon vor der Captcha-Eingabe wie hoch die Wahrscheinlichkeit ist, dass Sie ein Mensch sind. reCAPTCHA bzw. Captchas im Allgemeinen kommen immer dann zum Einsatz, wenn Bots gewisse Aktionen (wie z.B. Registrierungen, Umfragen usw.) manipulieren oder missbrauchen könnten.

Warum verwenden wir reCAPTCHA auf unserer Website?
Wir wollen nur Menschen aus Fleisch und Blut auf unserer Seite begrüßen. Bots oder Spam-Software unterschiedlichster Art dürfen getrost zuhause bleiben. Darum setzen wir alle Hebel in Bewegung, uns zu schützen und die bestmögliche Benutzerfreundlichkeit für Sie anzubieten. Aus diesem Grund verwenden wir Google reCAPTCHA der Firma Google. So können wir uns ziemlich sicher sein, dass wir eine „botfreie“ Webseite bleiben. Durch die Verwendung von reCAPTCHA werden Daten an Google übermittelt, um festzustellen, ob Sie auch wirklich ein Mensch sind. reCAPTCHA dient also der Sicherheit unserer Webseite und in weiterer Folge damit auch Ihrer Sicherheit. Zum Beispiel könnte es ohne reCAPTCHA passieren, dass bei einer Registrierung ein Bot möglichst viele E-Mail-Adressen registriert, um im Anschluss Foren oder Blogs mit unerwünschten Werbeinhalten „zuzuspamen“. Mit reCAPTCHA können wir solche Botangriffe vermeiden.

Welche Daten werden von reCAPTCHA gespeichert?
reCAPTCHA sammelt personenbezogene Daten von Usern, um festzustellen, ob die Handlungen auf unserer Webseite auch wirklich von Menschen stammen. Es kann also die IP-Adresse und andere Daten, die Google für den reCAPTCHA-Dienst benötigt, an Google versendet werden. IP-Adressen werden innerhalb der Mitgliedstaaten der EU oder anderer Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum fast immer zuvor gekürzt, bevor die Daten auf einem Server in den USA landen. Die IP-Adresse wird nicht mit anderen Daten von Google kombiniert, sofern Sie nicht während der Verwendung von reCAPTCHA mit Ihrem Google-Konto angemeldet sind. Zuerst prüft der reCAPTCHA-Algorithmus, ob auf Ihrem Browser schon Google-Cookies von anderen Google-Diensten (YouTube. Gmail usw.) platziert sind. Anschließend setzt reCAPTCHA ein zusätzliches Cookie in Ihrem Browser und erfasst einen Schnappschuss Ihres Browserfensters.

Die folgende Liste von gesammelten Browser- und Userdaten, hat nicht den Anspruch auf Vollständigkeit. Vielmehr sind es Beispiele von Daten, die nach unserer Erkenntnis, von Google verarbeitet werden.

Referrer URL (die Adresse der Seite von der der Besucher kommt)
IP-Adresse (z.B. 256.123.123.1)
Infos über das Betriebssystem (die Software, die den Betrieb Ihres Computers ermöglicht. Bekannte Betriebssysteme sind Windows, Mac OS X oder Linux)
Cookies (kleine Textdateien, die Daten in Ihrem Browser speichern)
Maus- und Keyboardverhalten (jede Aktion, die Sie mit der Maus oder der Tastatur ausführen wird gespeichert)
Datum und Spracheinstellungen (welche Sprache bzw. welches Datum Sie auf Ihrem PC voreingestellt haben wird gespeichert)
Alle Javascript-Objekte (JavaScript ist eine Programmiersprache, die Webseiten ermöglicht, sich an den User anzupassen. JavaScript-Objekte können alle möglichen Daten unter einem Namen sammeln)
Bildschirmauflösung (zeigt an aus wie vielen Pixeln die Bilddarstellung besteht)
Unumstritten ist, dass Google diese Daten verwendet und analysiert noch bevor Sie auf das Häkchen „Ich bin kein Roboter“ klicken. Bei der Invisible reCAPTCHA-Version fällt sogar das Ankreuzen weg und der ganze Erkennungsprozess läuft im Hintergrund ab. Wie viel und welche Daten Google genau speichert, erfährt man von Google nicht im Detail.

Folgende Cookies werden von reCAPTCHA verwendet: Hierbei beziehen wir uns auf die reCAPTCHA Demo-Version von Google unter https://www.google.com/recaptcha/api2/demo. All diese Cookies benötigen zu Trackingzwecken eine eindeutige Kennung. Hier ist eine Liste an Cookies, die Google reCAPTCHA auf der Demo-Version gesetzt hat:

Name: IDE
Wert: WqTUmlnmv_qXyi_DGNPLESKnRNrpgXoy1K-pAZtAkMbHI-311284247-8
Verwendungszweck: Dieses Cookie wird von der Firma DoubleClick (gehört auch Google) gesetzt, um die Aktionen eines Users auf der Webseite im Umgang mit Werbeanzeigen zu registrieren und zu melden. So kann die Werbewirksamkeit gemessen und entsprechende Optimierungsmaßnahmen getroffen werden. IDE wird in Browsern unter der Domain doubleclick.net gespeichert.
Ablaufdatum: nach einem Jahr

Name: 1P_JAR
Wert: 2019-5-14-12
Verwendungszweck: Dieses Cookie sammelt Statistiken zur Webseite-Nutzung und misst Conversions. Eine Conversion entsteht z.B., wenn ein User zu einem Käufer wird. Das Cookie wird auch verwendet, um Usern relevante Werbeanzeigen einzublenden. Weiters kann man mit dem Cookie vermeiden, dass ein User dieselbe Anzeige mehr als einmal zu Gesicht bekommt.
Ablaufdatum: nach einem Monat

Name: ANID
Wert: U7j1v3dZa3112842470xgZFmiqWppRWKOr
Verwendungszweck: Viele Infos konnten wir über dieses Cookie nicht in Erfahrung bringen. In der Datenschutzerklärung von Google wird das Cookie im Zusammenhang mit „Werbecookies“ wie z. B. “DSID”, “FLC”, “AID”, “TAID” erwähnt. ANID wird unter Domain google.com gespeichert.
Ablaufdatum: nach 9 Monaten

Name: CONSENT
Wert: YES+AT.de+20150628-20-0
Verwendungszweck: Das Cookie speichert den Status der Zustimmung eines Users zur Nutzung unterschiedlicher Services von Google. CONSENT dient auch der Sicherheit, um User zu überprüfen, Betrügereien von Anmeldeinformationen zu verhindern und Userdaten vor unbefugten Angriffen zu schützen.
Ablaufdatum: nach 19 Jahren

Name: NID
Wert: 0WmuWqy311284247zILzqV_nmt3sDXwPeM5Q
Verwendungszweck: NID wird von Google verwendet, um Werbeanzeigen an Ihre Google-Suche anzupassen. Mit Hilfe des Cookies „erinnert“ sich Google an Ihre meist eingegebenen Suchanfragen oder Ihre frühere Interaktion mit Anzeigen. So bekommen Sie immer maßgeschneiderte Werbeanzeigen. Das Cookie enthält eine einzigartige ID, um persönliche Einstellungen des Users für Werbezwecke zu sammeln.
Ablaufdatum: nach 6 Monaten

Name: DV
Wert: gEAABBCjJMXcI0dSAAAANbqc311284247-4
Verwendungszweck: Sobald Sie das „Ich bin kein Roboter“-Häkchen angekreuzt haben, wird dieses Cookie gesetzt. Das Cookie wird von Google Analytics für personalisierte Werbung verwendet. DV sammelt Informationen in anonymisierter Form und wird weiters benutzt, um User-Unterscheidungen zu treffen.
Ablaufdatum: nach 10 Minuten

Anmerkung: Diese Aufzählung kann keinen Anspruch auf Vollständigkeit erheben, da Google erfahrungsgemäß die Wahl ihrer Cookies immer wieder auch verändert.

Wie lange und wo werden die Daten gespeichert?
Durch das Einfügen von reCAPTCHA werden Daten von Ihnen auf den Google-Server übertragen. Wo genau diese Daten gespeichert werden, stellt Google, selbst nach wiederholtem Nachfragen, nicht klar dar. Ohne eine Bestätigung von Google erhalten zu haben, ist davon auszugehen, dass Daten wie Mausinteraktion, Verweildauer auf der Webseite oder Spracheinstellungen auf den europäischen oder amerikanischen Google-Servern gespeichert werden. Die IP-Adresse, die Ihr Browser an Google übermittelt, wird grundsätzlich nicht mit anderen Google-Daten aus weiteren Google-Diensten zusammengeführt. Wenn Sie allerdings während der Nutzung des reCAPTCHA-Plug-ins bei Ihrem Google-Konto angemeldet sind, werden die Daten zusammengeführt. Dafür gelten die abweichenden Datenschutzbestimmungen der Firma Google.

Wie kann ich meine Daten löschen bzw. die Datenspeicherung verhindern?
Wenn Sie wollen, dass über Sie und über Ihr Verhalten keine Daten an Google übermittelt werden, müssen Sie sich, bevor Sie unsere Webseite besuchen bzw. die reCAPTCHA-Software verwenden, bei Google vollkommen ausloggen und alle Google-Cookies löschen. Grundsätzlich werden die Daten sobald Sie unsere Seite aufrufen automatisch an Google übermittelt. Um diese Daten wieder zu löschen, müssen Sie den Google-Support auf  https://support.google.com/?hl=de&tid=311284247 kontaktieren.

Wenn Sie also unsere Webseite verwenden, erklären Sie sich einverstanden, dass Google LLC und deren Vertreter automatisch Daten erheben, bearbeiten und nutzen.

Bitte beachten Sie, dass bei der Verwendung dieses Tools Daten von Ihnen auch außerhalb der EU gespeichert und verarbeitet werden können. Die meisten Drittstaaten (darunter auch die USA) gelten nach derzeitigem europäischen Datenschutzrecht als nicht sicher. Daten an unsichere Drittstaaten dürfen also nicht einfach übertragen, dort gespeichert und verarbeitet werden, sofern es keine passenden Garantien (wie etwa EU-Standardvertragsklauseln) zwischen uns und dem außereuropäischen Dienstleister gibt.

Rechtsgrundlage
Wenn Sie eingewilligt haben, dass Google reCAPTCHA eingesetzt werden darf, ist die Rechtsgrundlage der entsprechenden Datenverarbeitung diese Einwilligung. Diese Einwilligung stellt laut Art. 6 Abs. 1 lit. a DSGVO (Einwilligung) die Rechtsgrundlage für die Verarbeitung personenbezogener Daten, wie sie bei der Erfassung durch Google reCAPTCHA vorkommen kann, dar.

Von unserer Seite besteht zudem ein berechtigtes Interesse, Google reCAPTCHA zu verwenden, um unser Online-Service zu optimieren und sicherer zu machen. Die dafür entsprechende Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO (Berechtigte Interessen).

Etwas mehr über reCAPTCHA erfahren Sie auf der Webentwickler-Seite von Google auf https://developers.google.com/recaptcha/. Google geht hier zwar auf die technische Entwicklung der reCAPTCHA näher ein, doch genaue Informationen über Datenspeicherung und datenschutzrelevanten Themen sucht man auch dort vergeblich. Eine gute Übersicht über die grundsätzliche Verwendung von Daten bei Google finden Sie in der hauseigenen Datenschutzerklärung auf https://www.google.com/intl/de/policies/privacy/.

Alle Texte sind urheberrechtlich geschützt.

Quelle: Erstellt mit dem Datenschutz Generator von AdSimple""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
