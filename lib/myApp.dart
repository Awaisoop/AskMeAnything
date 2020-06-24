import 'package:flutter/material.dart';
import 'dart:math';
class myApp extends StatefulWidget{
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int picCount = 1;
  void pic(){
    picCount = Random().nextInt(5)+1;

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ask me anything"),
        ),
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child:Center(
            child: GestureDetector(
              child: Image.asset("images/ball$picCount.png"),
              onTap: (){
                setState(() {
                  pic();
                });
              },
            )
          ),
        ),
      ),
    );
  }
}