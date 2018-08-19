import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './measurement.dart';

class Plant {
  const Plant({
    @required this.id,
    @required this.name,
    @required this.breed,
    @required this.latest_measurement,
  })  :
        assert(id != null),
        assert(name != null),
        assert(breed != null),
        assert(latest_measurement != null);

  final String id;
  final String name;
  final String breed;
  final Measurement latest_measurement;

  String humidityAsString() {
    return (this.latest_measurement.humidity * 100).toString();
  }

  Color getDynamicColor() {
    // 169, 207, 84
    // r g b
    int r = 255 - this.latest_measurement.toInt();

    var color = Color.fromARGB(255, r, 207, 84);
    return color;
  }

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'],
      name: json['name'],
      breed: json['breed'],
      latest_measurement: Measurement.fromJson(json['latest_measurement']),
    );
  }
}