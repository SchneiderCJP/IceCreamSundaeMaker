import 'package:flutter/material.dart';
import 'order.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key, required this.orders}) : super(key: key);
  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previous Orders'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Order #"+ (index+1).toString() + ": \n" + orders[index].toString()),
              );
            },
          ),
        ),
      ),
    );
  }
}
