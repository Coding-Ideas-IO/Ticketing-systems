import 'package:ticket_system/components/btnWay.dart';
import 'package:flutter/material.dart';

class SelectWay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("choose to pay", style: TextStyle(fontSize: 17)),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                BtnWay(
                  label: "ROUND TRIP",
                  iconData: Icons.swap_horiz,
                  color: Color(0xFFFFA726),
                ),
                BtnWay(
                  label: "ONE WAY",
                  iconData: Icons.trending_flat,
                  color: Color(0xFF64B5F6),
                )
              ],
            )
          ],
        ),
    );
  }
}