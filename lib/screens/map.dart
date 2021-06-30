//var map= "AIzaSyCAEHWzjXhKC7Ok0uex5PMKJ39r-u-tgvo";
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ticket_system/themes/bus_map_theme.dart';


class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();


 LatLng _latLng = LatLng(17.254324677996586, -88.76866282512337);
final Set<Marker> listMarkers = {};
static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.249909061237286, -88.77561753581168),
    zoom: 17,
  );
static final CameraPosition _kfindbus = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(17.254324677996586, -88.76866282512337),
      tilt: 59.440717697143555,      
      zoom: 16.151926040649414);

  // GoogleMapController _mapcontroler;  I made this because wanted to change map_style aka Carlos

  @override
  Widget build(BuildContext context) {
    listMarkers.add(Marker(
      markerId: MarkerId("one"),
      position: LatLng(17.254324677996586, -88.76866282512337),
      infoWindow: InfoWindow(
                title: 'BBOC',
                snippet: '15 mins',
            ),
     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      //icon: ,
      
    ));
    
    return new Scaffold(
      body: GoogleMap(
     //   mapType: MapType.normal,
     //this._mapcontroler.setMapStyle(jsonEncode(bustheme));
      initialCameraPosition: _kGooglePlex,
      markers: listMarkers,
      // markers: [
      //   Marker(
      //     markerId: MarkerId("id"),
      //     position: _latLng,
      //     infoWindow: InfoWindow(title: "BBOC",),
      //   ),
      // ].toSet(),
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          
         },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToterminal,
        label: Text('Track Bus Position!'),
        icon: Icon(Icons.place_outlined)
      ),
      
    );
  }
Future<void> _goToterminal() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kfindbus));
  }

Future<Uint8List> getBytesFromCanvas(int width, int height) async {
  final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(pictureRecorder);
  final Paint paint = Paint()..color = Colors.blue;
  final Radius radius = Radius.circular(20.0);
  canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0.0, 0.0, width.toDouble(), height.toDouble()),
        topLeft: radius,
        topRight: radius,
        bottomLeft: radius,
        bottomRight: radius,
      ),
      paint);
  TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
  painter.text = TextSpan(
    text: 'Hello world',
    style: TextStyle(fontSize: 25.0, color: Colors.white),
  );
  painter.layout();
  painter.paint(canvas, Offset((width * 0.5) - painter.width * 0.5, (height * 0.5) - painter.height * 0.5));
  final img = await pictureRecorder.endRecording().toImage(width, height);
  final data = await img.toByteData(format: ui.ImageByteFormat.png);
  return data.buffer.asUint8List();
}  

  
}