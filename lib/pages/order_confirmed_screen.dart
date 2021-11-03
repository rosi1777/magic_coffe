import 'package:flutter/material.dart';
import 'package:magic_coffe/widget/order_confirmed.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 768) {
            return const OrderConfirmed();
          } else {
            return const SingleChildScrollView(child: OrderConfirmed());
          }
        }),
      ),
    );
  }
}
