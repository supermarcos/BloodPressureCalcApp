import 'package:flutter/material.dart';

import 'package:bloodpressurecalc/modules/welcome.dart';

import 'package:bloodpressurecalc/modules/settings/about.dart';
import 'package:bloodpressurecalc/modules/settings/settings.dart';
import 'package:bloodpressurecalc/modules/settings/feedback.dart';

import 'package:bloodpressurecalc/modules/wizard/wizardpage.dart';

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
