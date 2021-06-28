import 'dart:async';
import 'dart:html';
import 'dart:js_util';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

StreamController<List<double>> streamController_set_marker =
    StreamController.broadcast();

class GoogleMap extends StatefulWidget {
  double init_lat;
  double init_lng;
  GoogleMap({
    this.init_lat = 49.13977253007279,
    this.init_lng = 9.208886687583137,
  });

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {
  @override
  Widget build(BuildContext context) {
    String htmlId = "7";
    Marker marker = Marker();

    final map_style = <MapTypeStyle>[
      MapTypeStyle()
        ..elementType = 'labels'
        ..stylers = [
          jsify({'visibility': 'off'}),
        ],
      MapTypeStyle()
        ..featureType = "road"
        ..stylers = [
          jsify({'visibility': 'off'}),
        ],
    ];

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      LatLng myLatlng = LatLng(widget.init_lat, widget.init_lng);

      MapOptions mapOptions = MapOptions()
        ..zoom = 4
        ..center = myLatlng
        ..styles = map_style
        ..streetViewControl = false
        ..mapTypeControl = false
        ..panControl = false
        ..fullscreenControl = false
        ..zoomControl = false;

      DivElement elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      GMap map = GMap(elem, mapOptions);

      map.onClick.listen((mapsMouseEvent) {
        streamController_set_marker
            .add([mapsMouseEvent.latLng.lat, mapsMouseEvent.latLng.lng]);
        marker.visible = false;
        marker = Marker(MarkerOptions()
          ..position =
              LatLng(mapsMouseEvent.latLng.lat, mapsMouseEvent.latLng.lng)
          ..map = map
          ..title = ""
          ..label = "");
      });

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
