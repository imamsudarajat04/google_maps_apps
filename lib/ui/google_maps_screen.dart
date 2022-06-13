import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);
  @override
  _GoogleMapsScreenKaryawanState createState() =>
      _GoogleMapsScreenKaryawanState();
}

class _GoogleMapsScreenKaryawanState extends State<GoogleMapsScreen> {
  final Set<Marker> _markers = {};

  final LatLng _currentPosition = const LatLng(0.9211113485406496, 104.45414034206269);
  final LatLng _currentPositionHome = const LatLng(0.930880, 104.522857);
  final LatLng mall_tcc = const LatLng(0.8942866230087267, 104.47956706874625);
  final LatLng kb_dompak = const LatLng(0.8763923993562516, 104.44514194616016);
  final LatLng k_walkottpi = const LatLng(0.9653413671650932, 104.44089448494357);
  final LatLng bandara_rhf = const LatLng(0.9223549912911251, 104.52667255320537);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: const MarkerId("0.9211113485406496, 104.45414034206269"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    _markers.add(
      Marker(
        markerId: const MarkerId("0.930880, 104.522857"),
        position: _currentPositionHome,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    _markers.add(
      Marker(
        markerId: const MarkerId("0.8942866230087267, 104.47956706874625"),
        position: mall_tcc,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    _markers.add(
      Marker(
        markerId: const MarkerId("0.8763923993562516, 104.44514194616016"),
        position: kb_dompak,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    _markers.add(
      Marker(
        markerId: const MarkerId("0.9653413671650932, 104.44089448494357"),
        position: k_walkottpi,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    _markers.add(
      Marker(
        markerId: const MarkerId("0.9223549912911251, 104.52667255320537"),
        position: bandara_rhf,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Google Maps View",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 17.0,
        ),
        markers: _markers,
      ),
    );
  }
}