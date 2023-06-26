import 'package:clima_weather_app/screens/location_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima_weather_app/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double lat;
  late double lon;
  @override
  void initState() {
    super.initState();
    getlocationData();
  }

  Future<void> getlocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weather = await weatherModel.getlocationweather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(weatherData: weather);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: const Center(
          child: SpinKitFoldingCube(
        color: Colors.white,
        size: 50,
      )),
    );
  }
}
