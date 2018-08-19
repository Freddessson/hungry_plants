import 'package:flutter/material.dart';
// import './card.dart';
import '../components/plantCard.dart';
import '../components/charts/line-area.dart';
import '../components/api.dart';
import '../models/plant.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    var list = (List<Plant> plants) => new ListView(
      padding: const EdgeInsets.all(20.0),
      children: plants.map((plant) => new PlantCard(
        title: plant.name,
        humidityLevel: (plant.latest_measurement.humidity * 100).toInt() ,
        breed: plant.breed,
      ).build(context)).toList(),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<Plant>>(
          future: new API().getAllPlants(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Plant> plants = snapshot.data;
              return list(plants);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      )
    );
  }
}