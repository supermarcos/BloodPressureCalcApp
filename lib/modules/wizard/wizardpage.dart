import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import './pages/details.dart';
import './pages/measurements.dart';
import './pages/daytime.dart';
import './pages/nighttime.dart';
import './pages/nadirs.dart';
import './pages/results.dart';

class WizardPage extends StatelessWidget {
  // GlobalKey<Swiper> _swiperKey = new GlobalKey();

  Widget _pageBuilder(int index) {
    Widget page = null;
    switch (index) {
      case 0:
        page = new DetailsPage();
        break;
      case 1:
        page = new MeasurementsPage();
        break;
      case 2:
        page = new DayTimePage();
        break;
      case 3:
        page = new NightTimePage();
        break;
      case 4:
        page = new NadirsPage();
        break;
      case 5:
        page = new ResultsPage();
        break;
    }
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WIZARD'),
        elevation: 0,
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
              flex: 4,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Swiper(
                      // key: _swiperKey,
                      loop: false,
                      itemBuilder: (BuildContext context, int index) {
                        return _pageBuilder(index);
                        // return new Image.network(
                        //   "http://via.placeholder.com/350x150",
                        //   fit: BoxFit.fill,
                        // );
                      },
                      itemCount: 6,
                      viewportFraction: 1,
                      scale: 0.5,
                      // pagination: new SwiperPagination(),
                      indicatorLayout: PageIndicatorLayout.SCALE,
                      // control: new SwiperControl(),
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
                        print(index);
                        if (index == 2) {
                          // _swiperKey.currentState.previous();
                        }
                      }),
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
                        child: Text('Back'),
                        onPressed: () {
                          // TODO: this should only happen when we are in the first slide, otherwise I should navigate to the previous slide
                          Navigator.pop(context);
                        },
                      ),
                      RaisedButton(
                        child: Text('Next'),
                        onPressed: () {},
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
