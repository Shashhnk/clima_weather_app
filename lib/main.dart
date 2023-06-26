

import 'package:clima_weather_app/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'screens/Loadingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:  LoadingScreen(),
    );
  }
}
