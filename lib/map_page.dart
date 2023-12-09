import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Page'),
      ),
      body: FlutterMap(
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                child: FlutterLogo(),
                width: 80.0,
                height: 80.0,
                point: LatLng(51.5, -0.09),
                //builder: (ctx) => Container(
                //child: FlutterLogo(),
                //),
              ),
            ],
          ),
        ],
        options: MapOptions(
          center: LatLng(51.5, -0.09),
          zoom: 13.0,
        ),
        //  Layers: [
        ////
        // ],
      ),
    );
  }
}
