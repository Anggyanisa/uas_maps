import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Puskesmas extends StatefulWidget {
  @override
  _PuskesmasState createState() => _PuskesmasState();
}

class _PuskesmasState extends State<Puskesmas> {
  Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-7.556295816895935, 111.58458208122735),
    zoom: 14.4746,
  );

  late LatLng _currentPosition;
  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    main();
  }

  Future<void> main() async {
    _currentPosition = LatLng(-7.556295816895935, 111.58458208122735);
    _markers.add(Marker(
      markerId: MarkerId("-7.556295816895935, 111.58458208122735"),
      position: _currentPosition,
      icon: BitmapDescriptor.defaultMarker,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Puskesmas Balerejo"),
        ),
        body: Column(
          children: [
            Container(
              width: 350,
              height: 300,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                markers: _markers,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Keterangan: Ini adalah Puskesmas Balerejo Madiun Melayani 24 jam",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
