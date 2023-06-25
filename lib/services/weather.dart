import 'package:clima_weather_app/services/location.dart';
import 'package:clima_weather_app/services/networking.dart';
const apikey = '6f1ea83129f48560a7504713491aa01e';
const openweatherurl ='https://api.openweathermap.org/data/2.5/weather';
class WeatherModel {

  Future getlocationweather()async{
    Location location = Location();
    await location.getCurrentlocation();

    Networkhelper networkhelper = Networkhelper(
        url:
            '$openweatherurl?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');

    var weatherData = await networkhelper.getdata();
    return weatherData;


  }

  Future getcityweather(String city_name) async {
    var url ='$openweatherurl?q=$city_name&appid=$apikey&units=metric';
    Networkhelper _networkhelper = Networkhelper(url: url);
     var cityweather = await _networkhelper.getdata();

     return cityweather;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
