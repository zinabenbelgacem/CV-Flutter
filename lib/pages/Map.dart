import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adresse Professionnelle'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(34.7487, 10.7628), // Coordonnées de Sfax
          zoom: 12.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('Route Mahdia km 2.5 Isrt Sfax'),
            position: LatLng(34.7487, 10.7628), // Coordonnées de Sfax
            infoWindow: InfoWindow(
              title: 'Route Mahdia km 2.5 '
                  'Iset Sfax',
              snippet: '',
            ),
          ),
        },
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
