
import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget{


   final List<String> _data  = List.empty(growable: true);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data list title"),
      ),
      body: new ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context,index){
          return new ListTile(
            title:Text(_data[index]),
          );
        },
      ),
    );
  }

}