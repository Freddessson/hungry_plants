import 'package:flutter/material.dart';

import '../components/api.dart';
import '../models/plant.dart';
import '../components/singlePlantHeader.dart';

class SinglePlant extends StatelessWidget {
  SinglePlant({ this.plant });

  final Plant plant;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(plant.name),
      // ),
      body: new Container(
        child: new ListView(
          children: [
            new SinglePlantHeader(plant: plant)
          ],
        ),
      ),
    );
  }
}