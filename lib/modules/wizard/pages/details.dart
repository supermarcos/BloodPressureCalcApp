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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Center(
              child: Text(
                "Please, select an age",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Flexible(
              child: Center(
                child: NumberPicker.integer(
                  initialValue: _currentAge,
                  minValue: 18,
                  listViewWidth: 200,
                  maxValue: 100,
                  onChanged: (newValue) =>
                      setState(() => _currentAge = newValue),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
