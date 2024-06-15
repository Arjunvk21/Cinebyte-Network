import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class map_page extends StatefulWidget {
  const map_page({super.key});

  @override
  State<map_page> createState() => _map_pageState();
}

class _map_pageState extends State<map_page> {
  @override
  double? lat;
  double? lon;

  Future latlon() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
    setState(() {
      lat = position.latitude;
      lon = position.longitude;
      log("$lat, $lon");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Latitude is $lat"),
                Text("Longitude is $lon"),
                ElevatedButton(
                    onPressed: () {
                      latlon();
                    },
                    child: Text("Get Live Location"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
