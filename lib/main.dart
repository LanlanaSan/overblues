import 'dart:async';

import 'package:flutter/material.dart';
import 'package:overblues/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overblues',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2429),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 168, 212, 248),
                Color.fromARGB(255, 186, 220, 247),
                Color.fromARGB(255, 243, 249, 250)
              ],
              stops: [0, 0.4, 1],
              begin: AlignmentDirectional(1, -1),
              end: AlignmentDirectional(-1, 1),
            ),
          ),
          child: Column(children: const [
            Padding(
              padding: EdgeInsets.only(top: 250),
            ),
            Image(
              image: AssetImage('assets/project health asset/overblue.png'),
              width: 200,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
          ])),
    );
  }
}

///////////////////////////////////////////////////////////
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Overblues',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homescreen());
  }
}
