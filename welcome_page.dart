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
        backgroundColor: Colors.green,
          body: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Icon(Icons.menu,color: Colors.white, size: 40,),
                Text('Welcome', style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold,),),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://images.pexels.com/photos/1542937/pexels-photo-1542937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                        )
                    )
                ),
            ]
              ),
    ),
             Text("Find Plants You'll Love", style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold,
             ),),
          ]
        ),
    ),
    );
  }
}






