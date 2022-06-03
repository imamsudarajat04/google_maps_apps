import 'package:flutter/material.dart';
import 'package:google_maps_apps/ui/google_maps_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Maps App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoogleMapsScreen(),
    );
  }
}
