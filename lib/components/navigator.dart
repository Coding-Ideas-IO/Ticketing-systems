import 'package:flutter/material.dart';
import 'package:ticket_system/screens/homeWidget.dart';
import 'package:ticket_system/screens/myqrcode.dart';
import 'package:ticket_system/screens/settings.dart';
import 'package:ticket_system/screens/editusers.dart';

class MyNavigatorState extends StatefulWidget {
  MyNavigatorState({Key key}) : super(key: key);

  @override
  _MyNavigatorStateState createState() => _MyNavigatorStateState();
}

class _MyNavigatorStateState extends State<MyNavigatorState> {
  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(
       length: 4,
       child: Scaffold(
      //  appBar: AppBar(
      //    title: Text("Desafio de Bottom Navigation"),
      //  ),
       body: TabBarView(
         children: <Widget>[
           HomeWidget(), SecondTab(), ThirdTab(), FourthTab(initialPage: 1,)
         ],
       ),
       bottomNavigationBar: Material(
         color: Color(0xFF26C6DA),
         child: TabBar(
           isScrollable: false,
           tabs: <Tab>[
          //  //Tab(icon: Icon(Icons.home_outlined), text: 'Home', ),
          //  Tab(child: 
          //  Text("Home",style: TextStyle(fontSize: 12 )), 
          //  icon: Icon(Icons.home_outlined, size: 26),
          //  ),
          //             Tab(child: 
          //  Text("Home",style: TextStyle(fontSize: 9 )), 
          //  //icon: Icon(Icons.watch_later, size: 13),
          //  ),
          //             Tab(child: 
          //  Text("My Account",style: TextStyle(fontSize: 9 )), 
          //  //icon: Icon(Icons.account_circle_rounded, size: 13),
          //  ),
          //  Tab(icon: Icon(Icons.watch_later), text: 'Home',),
           Tab(icon: Icon(Icons.airport_shuttle_sharp),),
           Tab(icon: Icon(Icons.qr_code_scanner_outlined  ),),
           Tab(icon: Icon(Icons.settings_sharp),),
           Tab(icon: Icon(Icons.account_circle_rounded),),
           ],
         ),
       ),
       
       )
    );
  }
}