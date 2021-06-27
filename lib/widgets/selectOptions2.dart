import 'package:ticket_system/components/btnPassengers.dart';
import 'package:flutter/material.dart';

class SelectOptions2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              BtnPassengers(
                title: "Departure",
                label: "22 Jul, 2021 08:00 AM",
                color: Color(0xFFFfeb578),
                iconData: Icons.today,
              ),
              BtnPassengers(
                title: "Return",
                label: "22 Jul, 2021 05:00 PM",
                color: Color(0xFFF00d5d8),
                iconData: Icons.today,
              )
            ],
          ),
          SizedBox(height: 10),
           Row(
            children: <Widget>[
              BtnPassengers(
                title: "Available seats",
                label: "12 seats",
                color: Color(0xFFFfe8db9),
                iconData: Icons.wc,
              ),
              BtnPassengers(
                title: "Bus line",
                label: "BBOC ",
                color: Color(0xFFF7d59ee),
                iconData: Icons.loupe,
              )
            ],
          )
        ],
    );
  }
}