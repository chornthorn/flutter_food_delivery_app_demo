import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  static const String routeName = '/popular_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Page'),
      ),
      body: ListView(
        children: [
          ...List.generate(
            100,
            (index) => const Center(
              child: Text('Popular Page'),
            ),
          )
        ],
      ),
    );
  }
}