import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/home_screen.dart';
import 'package:magic_coffe/theme.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: green,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              )
            ],
          ),
          const SizedBox(height: 130),
          Image.asset('assets/images/take_away.png'),
          const SizedBox(height: 32),
          Text(
            'Ordered',
            style: headline2,
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            'Fathorrosi, your order has been successfull placed.',
            style: subTitle2,
          ),
          const SizedBox(
            height: 21,
          )
        ],
      ),
    );
  }
}
