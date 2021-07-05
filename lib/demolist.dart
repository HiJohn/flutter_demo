import 'package:flutter_demo/datalist.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("list page title"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Maps"),
              onTap:() {
                Fluttertoast.showToast(
                    msg: "This is Bottom Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black54,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Album"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.bluetooth),
              title: new Text("BlueTooth"),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new DataScreen()));
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ));
  }
}
