import 'package:flutter/foundation.dart';
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

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'],
      name: json['name'],
      breed: json['breed'],
      latest_measurement: Measurement.fromJson(json['latest_measurement']),
    );
  }
}