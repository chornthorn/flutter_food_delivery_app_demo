import 'package:flutter/material.dart';

class MyModel extends InheritedWidget {
  MyModel({required super.child, required this.name,this.myColor = Colors.red});

  final String name;
  Color myColor;

  static MyModel? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyModel>();
  }

  static MyModel of(BuildContext context) {
    final MyModel? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  // method
  void changeColor() {
    myColor = Colors.pink;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}