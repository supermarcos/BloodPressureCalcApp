import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes/routes.dart';
import 'modules/welcome.dart';

void main() {
  // // widgets boundaries, margins, paddings and aligments
  // debugPaintSizeEnabled = true;
  // // text baseline
  // debugPaintBaselinesEnabled = true;
  // // highlights the widget is responding to the click / tap event
  // debugPaintPointersEnabled = true;

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(new MyApp());
    },
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true, // displays a grid overlaying the application
      // home: AuthPage(),
      routes: routesBuilder(context),
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => WelcomePage(),
        );
      },
    );
  }
}
