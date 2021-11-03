import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/radeem_screen.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/point_card.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 27,
            left: 26,
            right: 26,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Reward',
                    style: headline5,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 30,
                    right: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: green),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loyalty Card',
                          style: loyalti,
                        ),
                        Text(
                          '4 / 8',
                          style: loyalti,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 61,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white),
                      child: Center(
                        child: Image.asset('assets/images/loyalti.png'),
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: green),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Points:',
                              style: loyalti,
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              '2750',
                              style: point,
                            )
                          ]),
                      TextButton(
                          child: const Text('Radem Drinks'),
                          style: TextButton.styleFrom(
                              primary: white,
                              backgroundColor: greenTea,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RadeemScreen()));
                          }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                Text(
                  'History Rewards',
                  style: coffeName,
                ),
                const PointCard(),
                const Padding(padding: EdgeInsets.only(bottom: 77))
              ],
            ),
          ),
        );
      })),
    );
  }
}
