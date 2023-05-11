import 'package:flutter/material.dart';
import 'package:mymoon/prayer-time/utils/constants.dart';

import 'loading_screen.dart';


class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [color1, color2])),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset("assets/images/background.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: kTextFieldInputDecoration,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoadingScreen2(cityName: cityName);
                }));
              },
              child: Text("Get Times",
                  style: TextStyle(color: color2, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
