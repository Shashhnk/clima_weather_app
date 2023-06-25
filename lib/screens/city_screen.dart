import 'package:flutter/material.dart';
import 'package:clima_weather_app/utilites/constants.dart';

class cityscreen extends StatefulWidget {
  const cityscreen({super.key});

  @override
  State<cityscreen> createState() => _cityscreenState();
}

class _cityscreenState extends State<cityscreen> {
 late String city_name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {city_name=value;},
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    icon: const Icon(
                      Icons.location_city_sharp,
                      color: Colors.white,
                    ),
                    hintText: 'Enter City Name',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {Navigator.pop(context,city_name);},
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
