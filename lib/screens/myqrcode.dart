import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Purchased tickets",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "scan the code on board",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: "1234567990",
                  version: QrVersions.auto,
                  size: 175.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Expires 15 minutes after scannig",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
            Column(
              children: [
                // A Row for the top
                Row(children: [
                  Text('Group Name:'),
                  VerticalDivider(),
                  Text('North')
                ]),
                Divider(
                  height: 15,
                  thickness: 0,
                ),
                Row(
                  children: [
                    Text('Cost price:'),
                    VerticalDivider(),
                    Text('9.00')
                  ],
                  // be carefull with the $ since it's used to put variables
                  // into strings, eg Text('Name : $name ')
                ),
                 Divider(
                  height: 15,
                  thickness: 0,
                ),
                Row(
                  children: [
                    Text('Departure date:'),
                    VerticalDivider(),
                    Text('22 Jul 2021 8:00 AM')
                  ],
                  // be carefull with the $ since it's used to put variables
                  // into strings, eg Text('Name : $name ')
                ),
                 Divider(
                  height: 15,
                  thickness: 0,
                ),
                Row(
                  children: [
                    Text('Owner:'),
                    VerticalDivider(),
                    Text('Angeli Monterrosa')
                  ],
                  // be carefull with the $ since it's used to put variables
                  // into strings, eg Text('Name : $name ')
                ),
                                 Divider(
                  height: 15,
                  thickness: 0,
                ),
                Row(
                  children: [
                    Text('Ticket status:'),
                    VerticalDivider(),
                    Text('Active')
                  ],
                  // be carefull with the $ since it's used to put variables
                  // into strings, eg Text('Name : $name ')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
