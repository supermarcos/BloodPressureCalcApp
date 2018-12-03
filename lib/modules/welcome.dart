import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Center(
                child: Text('welcome screen'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    child: Text('New Interpretation'),
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
