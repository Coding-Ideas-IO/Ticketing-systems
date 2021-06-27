//import 'package:flutter/material.dart';

// class ThirdTab extends StatelessWidget {
//   const ThirdTab({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Icon(
//                 Icons.airplanemode_active,
//                 size: 160.0,
//                 color: Colors.white,
//               ),
//               Text(
//                 "Tercer Tab",
//                 style: TextStyle(color: Colors.white),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_system/components/navigator.dart';
import 'package:ticket_system/screens/editusers.dart';
import 'package:ticket_system/screens/login.dart';

class ThirdTab extends StatefulWidget {
  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.payment,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Paying Method",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),

            // buildAccountOptionRow(
            //   context,
            //   "Change password",
            // ),
            //buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Add paying method"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and security"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.report_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Report issues",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(context, "file a complaint"),
            SizedBox(
              height: 40,
            ),
             
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("When bus 15mins far", true),
            buildNotificationOptionRow("Account activity", true),
            buildNotificationOptionRow("Opportunity", false),
            SizedBox(
              height: 50,
            ),
             
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginScreen()),
  );
},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            //   return FourthTab(initialPage: 2,);
            // }));
      },
      // onTap: () {
      //   // showDialog(
      //   //     context: context,
      //   //     builder: (BuildContext context) {
      //   //       return AlertDialog(
      //   //         title: Text(title),
      //   //         content: Column(
      //   //           mainAxisSize: MainAxisSize.min,
      //   //           children: [
      //   //             Text("Option 1"),
      //   //             Text("Option 2"),
      //   //             Text("Option 3"),
      //   //           ],
      //   //         ),
      //   //         actions: [
      //   //           FlatButton(
      //   //               onPressed: () {
      //   //                 Navigator.of(context).pop();
      //   //               },
      //   //               child: Text("Close")),
      //   //         ],
      //   //       );
      //   //     });
      //   Navigator.of(context).pop(MaterialPageRoute(
      //             builder: (BuildContext context) => FourthTab()));
      // },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                //  fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
