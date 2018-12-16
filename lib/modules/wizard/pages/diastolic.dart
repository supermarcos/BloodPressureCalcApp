import 'package:flutter/material.dart';

class DiastolicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Center(
              child: Text(
                "Please, enter Diastolic data",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Diastolic value day time",
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Diastolic value night time",
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
