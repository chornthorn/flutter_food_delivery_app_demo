import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_food_delivery_app/common/constants.dart';
import 'package:flutter_food_delivery_app/views/splash_page.dart';

import 'models/my_model.dart';
import 'router/app_router.dart';



void main() {
  runApp(
    MyModel(
      name: "Name from main",
      myColor: Colors.blue,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Kantumruy Pro',
        primaryColor: primaryColor,
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: tertiaryColor,
        ),
        scaffoldBackgroundColor: Color(0xffF5F6F9),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: neutral5Color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            shadowColor: Colors.transparent,
          ),
        ),
        // bottomAppBarColor: Colors.transparent,
      ),
      initialRoute: SplashPage.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
