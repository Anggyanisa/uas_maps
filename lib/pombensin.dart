import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PomBensin extends StatefulWidget {
  @override
  _PomBensinState createState() => _PomBensinState();
}

class _PomBensinState extends State<PomBensin> {
  Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-7.552828220431345, 111.59483863967317),
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
    _currentPosition = LatLng(-7.552828220431345, 111.59483863967317);
    _markers.add(Marker(
      markerId: MarkerId("-7.552828220431345, 111.59483863967317"),
      position: _currentPosition,
      icon: BitmapDescriptor.defaultMarker,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pom Bensin Balerejo"),
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
                "Keterangan: Ini adalah Pom Bensin Balerejo Buka jam 05.00 sampai 20.00",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
