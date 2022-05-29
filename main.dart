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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Log-In'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: new EdgeInsets.only(top: 10.0, bottom: 10.0)),
            Text('Enter your username and Password for Login', style:
            TextStyle(color: Colors.green, fontWeight: FontWeight.bold, ),),
              Container(
                padding: EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
        ),
                  ),),
            Container(
              padding: EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),),
            Container(
              child: Text('Forgot Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.green,
              minimumSize: const Size.fromHeight(50), // NEW
            ),
      onPressed: () {},
      child: const Text(
        'Log-In',
        style: TextStyle(fontSize: 24),
      ),),
            ),
            Text('OR', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),),
            Padding(padding: EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.facebook_rounded, color: Colors.green,size: 50,
                    ),
              Icon(Icons.whatsapp_sharp, color: Colors.green,size: 50,),
              Icon(Icons.web_rounded, color: Colors.green,size: 50,
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
