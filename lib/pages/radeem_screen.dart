import 'package:flutter/material.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/radeem_card.dart';

class RadeemScreen extends StatelessWidget {
  const RadeemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 27, left: 26, right: 26),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: green,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Radem',
                      style: headline5,
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: white,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const RadeemCard()
              ]),
            ),
          );
        }),
      ),
    );
  }
}
