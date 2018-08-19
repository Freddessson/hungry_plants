import 'package:flutter/material.dart';
// import './card.dart';
import './plantCard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Humidify',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primaryColor: Color(0xFFA9CF54),
        //accentColor: Colors.white
        //primarySwatch: MaterialColor(0, new Map(0, Color(0xFFA9CF54))) //, Color.white))
      ),
      home: new MyHomePage(title: 'Humidifyz Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        padding: const EdgeInsets.all(20.0),
        children: [
          new Text(
            "My Plants",
            textAlign: TextAlign.left,
            style: new TextStyle(
              color: Colors.grey,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Helvetica",
            ),
          ),
          plantCard("Magnolia - Outdoors 2", 20, "magnilia"),
          plantCard("Orchid - Bedroom", 80, "orchidia"),
          plantCard("Kaktus - Living room", 10, "kaktus"),
          plantCard("Magnolia - Outdoors", 40, "magnilia"),
          plantCard("Magnolia - Outdoors", 60, "magnilia"),
          plantCard("Magnolia - Outdoors", 50, "magnilia"),
          plantCard("Magnolia - Outdoors", 30, "magnilia"),
          plantCard("Orchid - Bedroom", 70, "orchidia"),
          plantCard("Orchid - Bedroom", 90, "orchidia"),
          plantCard("Orchid - Bedroom", 100, "orchidia"),
        ],
      ),
    );
  }
}