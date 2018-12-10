import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import './pages/details.dart';
import './pages/measurements.dart';
import './pages/systolic.dart';
import './pages/diastolic.dart';
import './pages/nadirs.dart';
import './pages/results.dart';

class WizardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _WizardPageState();
  }
}

class _WizardPageState extends State<WizardPage> {
  Widget _pageBuilder(int index) {
    Widget page;
    switch (index) {
      case 0:
        page = new DetailsPage();
        break;
      case 1:
        page = new MeasurementsPage();
        break;
      case 2:
        page = new systolicPage();
        break;
      case 3:
        page = new diastolicPage();
        break;
      case 4:
        page = new NadirsPage();
        break;
    }
    return page;
  }

  SwiperController _controller;

  int _currentIndex;

  @override
  void initState() {
    super.initState();

    _controller = new SwiperController();
    _currentIndex = 0;
  }

  Widget buildSwiper() {
    return Swiper(
        // key: _swiperKey,
        loop: false,
        itemBuilder: (BuildContext context, int index) {
          return _pageBuilder(index);
        },
        itemCount: 5,
        viewportFraction: 1,
        scale: 0.5,
        controller: _controller,
        indicatorLayout: PageIndicatorLayout.SCALE,
        pagination: new SwiperPagination(
          margin: EdgeInsets.only(bottom: 20),
          builder: const DotSwiperPaginationBuilder(
            size: 20.0,
            activeSize: 20.0,
            space: 20.0,
            color: Colors.white30,
            activeColor: Colors.white,
          ),
        ),
        onIndexChanged: (int index) {
          if (index == 2 && _currentIndex == 1) {
            // _controller.previous(animation: true);
            // _controller.move(_currentIndex);
          } else {
            _currentIndex = index;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WIZARD'),
        elevation: 0,
        backgroundColor: Colors.indigo[800],
        centerTitle: true,
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
              flex: 4,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: buildSwiper(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 5,
                        color: Colors.indigo[800],
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                            Text(
                              'Back',
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                          ],
                        ),
                        onPressed: () {
                          if (_currentIndex == 0) {
                            Navigator.pop(context);
                          } else {
                            _controller.previous(animation: true);
                          }
                        },
                      ),
                      RaisedButton(
                        elevation: 5,
                        color: Colors.indigo[800],
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Text(
                              'Next',
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                        onPressed: () {
                          if (_currentIndex < 4) {
                            _controller.next(animation: true);
                          } else if (_currentIndex == 4) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultsPage(123),
                              ),
                            );
                          }
                        },
                      ),
                    ],
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
