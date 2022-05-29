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
          body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://images.pexels.com/photos/1542937/pexels-photo-1542937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      colorFilter: ColorFilter.mode(Colors.black12, BlendMode.luminosity),
                      fit: BoxFit.cover, opacity: 0.6
                  ),
              ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 400),
            child: Column(
            children: [
              Text(
              'OTP Verification', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                children: <Widget> [
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    alignment:Alignment.center,
                    child: Text('2', style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black, fontSize: 20,),),
                    height: 50,
                    width: 50,
                    color: Colors.white,

                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    alignment:Alignment.center,
                    child: Text('1', style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black, fontSize: 20,),),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    alignment:Alignment.center,
                    child: Text('5', style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black, fontSize: 20,),),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    alignment:Alignment.center,
                    child: Text('2', style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black, fontSize: 20,),),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),

                ],
              ),
            ],
            ),
          ),
      )
    );
  }
}






