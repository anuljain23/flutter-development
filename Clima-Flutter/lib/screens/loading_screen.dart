import 'dart:convert';
import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const apiKey = '1c7103d9edb74a0d8f5b64f668b64641';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double longitude;
  double latitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    latitude=location.latitude;
    longitude=location.longitude;

    getData();
  }

  void getData() async{
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    if(response.statusCode==200){
      String data  = response.body;
      var decodedData = jsonDecode(data);
      var temperature = decodedData['main']['temp'];
      var condition = decodedData['weather'][0]['id'];
      var cityName = decodedData['name'];

      print(temperature);
      print(condition);
      print(cityName);
    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
