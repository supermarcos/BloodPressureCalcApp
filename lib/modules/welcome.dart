import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'WELCOME',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[800],
      ),
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.indigo[800],
              Colors.indigo[700],
              Colors.indigo[600],
              Colors.indigo[400],
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Blood Pressure Calculator',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Text(
                        'This app is aiming to be a simple calculator for Blood Pressure given certain data such age and several systolic and dyastolic measurements to get a diagnosis as a report.',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Text(
                        'To start using the application, just tab on "New Interpretation" and follow the wizard to get the interpretation in the last step.',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(30),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    elevation: 5,
                    color: Colors.indigo[800],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(20),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0)),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          'New Interpretation',
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/wizard');
                    },
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
