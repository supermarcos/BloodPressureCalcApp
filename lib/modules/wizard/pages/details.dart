import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DetailsPageState();
  }
}

class _DetailsPageState extends State<DetailsPage> {
  int _currentAge;

  void _handleChange(int value) {
    //setState(() => _currentAge = value);
  }

  @override
  void initState() {
    super.initState();
    _currentAge = 40;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Please, select an age",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Center(
              child: NumberPicker.integer(
                initialValue: _currentAge,
                minValue: 18,
                maxValue: 100,
                onChanged: (newValue) => setState(() => _currentAge = newValue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
