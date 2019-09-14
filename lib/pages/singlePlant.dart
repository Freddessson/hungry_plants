import 'package:flutter/material.dart';
//import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// import './card.dart';


class SinglePlant extends StatefulWidget {
  SinglePlant({Key key, this.title, this.breed}) : super(key: key);

  final String title;
  final String breed;

  @override
  _SinglePlant createState() => new _SinglePlant(breed:this.breed);
}

class _SinglePlant extends State<SinglePlant> {
  _SinglePlant({this.breed});
  final String breed;
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
        title: new Text(this.breed),
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
          new Card(
            child: new Container(
              child: new SimpleLineChart.withSampleData(),
              height: 250
            )
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


class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}