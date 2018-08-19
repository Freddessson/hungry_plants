import 'package:flutter/material.dart';
// import './card.dart';


class SinglePlant extends StatefulWidget {
  SinglePlant({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SinglePlant createState() => new _SinglePlant();
}

class _SinglePlant extends State<SinglePlant> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MySinglePlantPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Plant"),
      ),
      body: new ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
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
          )
        ],
      ),
    );
  }
}