import 'package:flutter/material.dart';

import '../views/home_page.dart';
import '../views/splash_page.dart';

Route<RouteSettings> onGenerateRoute(settings) {
  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
