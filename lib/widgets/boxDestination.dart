import 'package:flutter/material.dart';
import 'package:ticket_system/screens/map.dart';

class BoxDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    
    return InkWell(
       onTap: () {
Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MapSample(),
        ));
},
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
    //       InkWell(
    //   // When the user taps the button, show the map page.
    //   onTap: () {
    //     Navigator.of(context)
    //         .push(MaterialPageRoute(builder: (BuildContext context) {
    //       return MapSample();
    //     }));
    //   },
    // );
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10),
              _iconDestination(),
              SizedBox(width: 17),
              _originAndDestionation1(),
              SizedBox(width: 100),
              _originAndDestionationIcon(),
            ],
          )
        ],
      ),
    ),
    );
  }
}

Widget _originAndDestionationIcon() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text("CZ", style: TextStyle(fontSize: 23)),
      SizedBox(height: 15),
      Icon(Icons.swap_vert, color: Color(0xFFF00d5d8), size: 40),
      SizedBox(height: 15),
      Text("BZ", style: TextStyle(fontSize: 23)),
    ],
  );
}

Widget _originAndDestionation1() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Origin \n",
              style: TextStyle(color: Color(0xFFFb7b7c5), fontSize: 14)),
          TextSpan(
            text: "Corozal",
            style: TextStyle(fontSize: 17, color: Colors.black),
          )
        ]),
      ),
      SizedBox(height: 75),
      RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Destination \n",
              style: TextStyle(color: Color(0xFFFb7b7c5), fontSize: 14)),
          TextSpan(
            text: "Belize City",
            style: TextStyle(fontSize: 17, color: Colors.black),
          )
        ]),
      ),
    ],
  );
}

// change(){
//   InkWell(
//    onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
//               return MapSample();
//             }));
//       },
//   );
// }

Widget _iconDestination() {
  return Container(
    child: Column(
      children: <Widget>[
        Icon(Icons.directions_bus, color: Color(0xFFF00d5d8), size: 30),
        Icon(Icons.adjust, color: Color(0xFFF00d5d8), size: 12),
        Icon(Icons.adjust, color: Color(0xFFF00d5d8), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xFFF00d5d8), size: 12),
        Icon(Icons.adjust, color: Color(0xFFFf89380), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xFFFf89380), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xFFFf89380), size: 12),
        Icon(Icons.location_on, color: Color(0xFFFf89380), size: 30),
      ],
    ),
  );
}
