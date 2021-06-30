//import 'package:ticket_system/screens/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_system/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ticketing system',
      theme: ThemeData(
         primaryColor: Color(0xFF26C6DA),
        //primaryColor: Colors.lightBlue,
       // splashColor: Colors.orange,
       
      ),
      home: LoginScreen(),
    );
  }
}
