import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';
import 'package:flutter_food_delivery_app/views/orders_page.dart';
import 'package:flutter_food_delivery_app/views/profile_page.dart';

import '../views/get_started_page.dart';
import '../views/home_page.dart';
import '../views/popular_page.dart';
import '../views/splash_page.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );

    case GetStartedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => GetStartedPage(
          arguments: args as GetStartedPageArguments,
        ),
      );
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case OrdersPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPage(),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
      );
      case PopularPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularPage(),
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
