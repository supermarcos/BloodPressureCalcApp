import 'package:flutter/material.dart';

class MeasurementsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeasurementsPageState();
  }
}

class _MeasurementsPageState extends State<MeasurementsPage> {
  FocusNode myFocusNode;
  int dayTimeValue = 0;
  int nightTimeValue = 0;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
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
                "Please, enter measurements",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Form(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: "Valid measurement day time",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                        keyboardType: TextInputType.number,
                        autocorrect: false,
                        focusNode: myFocusNode,
                        initialValue: this.dayTimeValue.toString(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: "Valid measurement night time",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                        keyboardType: TextInputType.number,
                        onEditingComplete: () {
                          this.dayTimeValue = 10;
                        },
                        autocorrect: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
