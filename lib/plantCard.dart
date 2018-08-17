import 'package:flutter/material.dart';

import './styles/text/default.dart';
import './styles/text/subtitle.dart';
import './styles/text/title.dart';
import './styles/dynamic_color.dart';


Card plantCard(title, int humidityLevel, breed) {
  var subtitle = "\nHumidity:" + humidityLevel.toString() + "%";

  return new Card(
    margin: EdgeInsets.only(top: 20.0),
    child: new Container(
      padding: EdgeInsets.all(25.0),
      height: 130.0,
      decoration: new BoxDecoration(
        color: getDynamicColor(humidityLevel),
      ),
      child: new Row(
        children: <Widget> [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textTitle(title, TextAlign.left),
                textSubTitle(breed, TextAlign.left),
                defaultText(subtitle, TextAlign.left)
              ]
            )
          ),
          new Image.asset("assets/images/potted-plant.png")
        ]
      ),
    ),
  );
}
