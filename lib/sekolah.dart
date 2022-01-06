import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Sekolah extends StatefulWidget {
  const Sekolah({Key? key}) : super(key: key);

  @override
  _SekolahState createState() => _SekolahState();
}

class _SekolahState extends State<Sekolah> {
  Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-7.5562593812150425, 111.5651305677334),
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
    _currentPosition = LatLng(-7.5562593812150425, 111.5651305677334);
    _markers.add(Marker(
      markerId: MarkerId("-7.5562593812150425, 111.5651305677334"),
      position: _currentPosition,
      icon: BitmapDescriptor.defaultMarker,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sekolah Sdn Garon 02"),
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
                "Keterangan: Ini adalah SDN GARON 02 yang berlokasi di madiun jawa timur",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
