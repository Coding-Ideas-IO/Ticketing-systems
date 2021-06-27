import 'package:ticket_system/widgets/boxDestination.dart';
import 'package:ticket_system/widgets/boxDestination2.dart';
import 'package:ticket_system/widgets/options.dart';
//import 'package:ticket_system/widgets/recommendation.dart';
import 'package:ticket_system/widgets/selectOptions.dart';
import 'package:ticket_system/widgets/selectOptions2.dart';
import 'package:ticket_system/widgets/selectWay.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFf6f5fb),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 30, top: 40, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Options(),
                SizedBox(height: 10),

                Divider(
                  //height: 15,
                  height: 20,
                  indent: 10,
                  endIndent: 20,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                BoxDestination(),
                SizedBox(height: 22),
                SelectWay(),
                SizedBox(height: 25),
                SelectOptions(),
                SizedBox(height: 16),
                Divider(
                  //height: 15,
                  height: 20,
                  indent: 10,
                  endIndent: 20,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                BoxDestination2(),
                SizedBox(height: 22),
                SelectWay(),
                SizedBox(height: 25),
                SelectOptions2(),
                // SizedBox(height: 5),
                // Recommendation()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
