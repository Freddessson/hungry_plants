import 'package:flutter/material.dart';

import '../components/charts/line-area.dart';
import '../components/api.dart';
import '../models/plant.dart';
import '../models/measurement.dart';
import '../components/styles/text/title.dart';
import '../components/styles/text/subtitle.dart';
import '../components/styles/text/bigText.dart';
import '../components/styles/text/default.dart';


class SinglePlantHeader extends StatelessWidget {
  SinglePlantHeader({ this.plant });

  final Plant plant;

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


    return new Container(
      decoration: new BoxDecoration(
        color: Color(0xFF82A03F),
      ),
      // padding: EdgeInsets.only(left: 20.0, right: 20.0),
      height: 320.0,
      child: new ListView(
        children: [
          new Row(
            children: [
              new BackButton( color: Colors.white),
              textTitle(plant.name, TextAlign.left),
            ]
          ),
          bigText(plant.humidityAsString() + "%", TextAlign.left),
          chartWidget,
        ],
      )
    );
  }
}