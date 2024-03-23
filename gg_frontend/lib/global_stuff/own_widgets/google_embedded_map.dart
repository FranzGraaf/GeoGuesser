import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/KEYS.dart';

class Google_Embedded_Map extends StatefulWidget {
  const Google_Embedded_Map({Key? key}) : super(key: key);

  @override
  _Google_Embedded_MapState createState() => _Google_Embedded_MapState();
}

class _Google_Embedded_MapState extends State<Google_Embedded_Map> {
  late Widget _iframeWidget;

  @override
  void initState() {
    // I Frame ----------
    final IFrameElement _iframeElement = IFrameElement();
    _iframeElement.src = "https://maps.googleapis.com/maps/embed/v1/view?key=" +
        FIREBASE_API_KEY +
        "&center=0,0&zoom=7&maptype=roadmap";

    _iframeElement.style.border = 'none';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
    // I Frame ----------
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _iframeWidget,
    );
  }
}
