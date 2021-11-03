import 'package:flutter/material.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/coffe_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 26, top: 21),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: subTitle4,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Fathorrosi',
                          style: name,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart),
                          color: green,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person),
                          color: green,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 77),
                padding: const EdgeInsets.symmetric(horizontal: 26),
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: green),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Select Your Coffe',
                      style: subTitle5,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Expanded(child: CofferCard())
                  ],
                ),
              )
            ],
          );
        },
      )),
    );
  }
}
