import 'package:flutter/material.dart';

import '../components/charts/line-area.dart';




class SinglePlant extends StatelessWidget {
  SinglePlant({ this.title, this.humidityLevel, this.breed});

  final String title;
  final int humidityLevel;
  final String breed;

  @override
  Widget build(BuildContext context) {

    var chart = new AreaAndLineChart.withSampleData();

    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          new Text(
            "Second Page",
            textAlign: TextAlign.left,
            style: new TextStyle(
              color: Colors.grey,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Helvetica",
            ),
          ),
          new RaisedButton(
            child: new Text("Go back"),
            onPressed: () => Navigator.pop(context),
          ),
          chartWidget
        ],
      ),
    );
  }
}