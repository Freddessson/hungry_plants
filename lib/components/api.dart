import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/plant.dart';
import '../models/measurement.dart';

const API_URL = "http://localhost:3000/";

class API {
  Future<Plant> getSinglePost(id) async {
    final response = await http.get(API_URL + id);

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body);
      return Plant.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<List<Plant>> getAllPlants() async {
    final response = await http.get(API_URL);
    // final List<Plant> list = new List<Plant>();
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body);
      List<dynamic> jsonObject = json.decode(response.body);
      Iterable<Plant> list = jsonObject.map((plant) => Plant.fromJson(plant));

      return list.toList();
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load plants');
    }
  }

  Future<List<Measurement>> getPlantMeasurements(id) async {
    final response = await http.get(API_URL + id + '/measurement');
    // final List<Plant> list = new List<Plant>();
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body);
      List<dynamic> jsonObject = json.decode(response.body);
      Iterable<Measurement> list = jsonObject.map((plant) => Measurement.fromJson(plant));

      return list.toList();
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load plants');
    }
  }
}

