import 'package:flutter/material.dart';

class DayTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: Center(child: Text("details page")),
      ),
    );
  }
}
