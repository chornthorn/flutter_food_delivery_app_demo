import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.arguments}) : super(key: key);

  static const String routeName = '/home';

  final Map<String, dynamic> arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title'] ?? 'Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(arguments['description'] ?? ''),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
              onPressed: () {
              },
              icon: const Icon(Icons.arrow_forward),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Get Started'),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
