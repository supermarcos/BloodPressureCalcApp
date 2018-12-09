import 'package:flutter/material.dart';

import 'package:BPCalculator/modules/welcome.dart';
import 'package:BPCalculator/modules/settings/about.dart';
import 'package:BPCalculator/modules/settings/settings.dart';
import 'package:BPCalculator/modules/settings/feedback.dart';

import 'package:BPCalculator/modules/wizard/wizardpage.dart';

Map<String, WidgetBuilder> routesBuilder(BuildContext context) {
  final Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => WelcomePage(),
    '/wizard': (BuildContext context) => WizardPage(),
    '/settings': (BuildContext context) => SettingsPage(),
    '/feedback': (BuildContext context) => FeedbackPage(),
    '/about': (BuildContext context) => AboutPage(),
  };
  return routes;
}
