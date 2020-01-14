import 'package:flutter/foundation.dart';

class Measurement {
  const Measurement({
    @required this.id,
    @required this.volt,
    @required this.unit,
    @required this.humidity,
    @required this.timestamp,
  }) :
      assert(id != null),
      assert(volt != null),
      assert(unit != null),
      assert(humidity != null),
      assert(timestamp != null);

  final String id;
  final double volt;
  final double unit;
  final double humidity;
  final DateTime timestamp;

  int toInt() {
    return (this.humidity * 100).round();
  }

  factory Measurement.fromJson(Map<String, dynamic> json) {
    return Measurement(
      id: json['id'],
      volt: double.parse(json['volt'].toString()),
      unit: double.parse(json['units'].toString()),
      humidity: double.parse(json['humidity'].toString()),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}