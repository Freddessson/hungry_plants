import 'package:flutter/material.dart';
import 'package:humidify_flutter/pages/addDevice.dart';
// import './card.dart';
import './pages/home.dart';

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
        fontFamily: "Roboto",
        //accentColor: Colors.white
        //primarySwatch: MaterialColor(0, new Map(0, Color(0xFFA9CF54))) //, Color.white))
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
            title: Text('Humidifyz Home'),
          ),
          body: TabBarView(
            children: [
              new Home(title: 'Humidifyz Home'),
              new AddDevices(),
            ],
          ),
        ),
      ),
 

      // 
    );
  }
}
