import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static const String routeName = '/orders_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Page'),
      ),
      body: Container(
        child: const Center(
          child: Text('Orders Page'),
        ),
      ),
    );
  }
}
