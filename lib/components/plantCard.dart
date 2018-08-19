import 'package:flutter/material.dart';

import './styles/text/default.dart';
import './styles/text/subtitle.dart';
import './styles/text/title.dart';

import '../pages/singlePlant.dart';
import '../models/plant.dart';

class PlantCard extends StatelessWidget {
  PlantCard({ this.plant });

  final Plant plant;

  @override 
  Widget build(BuildContext context) {
    var subtitle = "\nHumidity: " + this.plant.humidityAsString() + "%";

    return new GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SinglePlant(plant: plant,)),
        ),
        child: new Card(
          margin: EdgeInsets.only(top: 20.0),
          child: new Container(
            padding: EdgeInsets.all(25.0),
            height: 140.0,
            decoration: new BoxDecoration(
              color: this.plant.getDynamicColor(),
            ),
            child: new Row(
              children: <Widget> [
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textTitle(this.plant.name, TextAlign.left),
                      textSubTitle(this.plant.breed, TextAlign.left),
                      defaultText(subtitle, TextAlign.left)
                    ]
                  )
                ),
                new Image.asset("assets/images/potted-plant.png")
              ]
            ),
          ),
        ),
    );
  }
}
