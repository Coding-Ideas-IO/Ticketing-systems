import 'package:ticket_system/components/btnOptions.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          BtnOptions(
            label: "Corozal",
            color: Colors.green,
          ),
          BtnOptions(
            label: "Orange Walk",
            color: Color(0xFFF9b9ba0),
          ),
          BtnOptions(
            label: "Belize",
            color: Color(0xFFF9b9ba0),
          ),
          BtnOptions(
            label: "Cayo",
            color: Color(0xFFF9b9ba0),
          ),
          BtnOptions(
            label: "Stann Creek",
            color: Color(0xFFF9b9ba0),
          ),
          BtnOptions(
            label: "Toledo",
            color: Color(0xFFF9b9ba0),
          ),
        ],
      ),
    );
  }
}
