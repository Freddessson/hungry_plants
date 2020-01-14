import 'package:flutter/material.dart';
// import 'package:wifi/wifi.dart';


class AddDevices extends StatefulWidget {
  AddDevices({Key key }) : super(key: key);

  @override
  _AddDevices createState() => new _AddDevices();
}

class _AddDevices extends State<AddDevices> {
  bool open = false;


  void getNearbyWiFis() {
    print('Get nearby');
    // Future<List<WifiResult>> wifiRes = Wifi.list('key');
    // print(wifiRes);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called

    return new Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            open ?
              Text('im pressed') : Text('im not pressed'),
            new FlatButton(
              child: Text("Im a button"),
              onPressed: () async => {

                this.getNearbyWiFis()

                // setState(() => {
                //   open = !open
                // })
              },
            ),
          ], 
        ),
      )
    );
  }
}