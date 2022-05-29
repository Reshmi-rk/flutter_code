import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://images.pexels.com/photos/1542937/pexels-photo-1542937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    colorFilter: ColorFilter.mode(Colors.black12, BlendMode.luminosity),
                    fit: BoxFit.cover
                )
            ),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Center(
                  child: Padding(padding: EdgeInsets.only(top: 300),
                    child: Text('Decorate Your Garden With Us',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
                    ),
                  ),
                ),
       ),
            ),
          ),
          floatingActionButton: new FloatingActionButton(shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(2, 2))),
              elevation: 0.0,
              child: new Icon(Icons.check, color: Colors.green,),
              backgroundColor: Colors.white,
              onPressed: (){}
          )
      ),
    );
  }
}






