import 'package:flutter/material.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/history.dart';
import 'package:magic_coffe/widget/on_going_card.dart';
import 'package:magic_coffe/widget/point_card.dart';
import 'package:magic_coffe/widget/radeem_card.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Order",
                style: headline5,
              ),
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: white,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: TabBar(
                  indicatorColor: green,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3,
                  labelColor: Colors.blue,
                  unselectedLabelColor: grey,
                  tabs: <Tab>[
                    Tab(
                      child: Text(
                        'On Going',
                        style: coffeName,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'History',
                        style: coffeName,
                      ),
                    )
                  ],
                ),
              ),
            ),
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: TabBarView(children: <Widget>[
                  OnGoingCard(),
                  History(),
                ]),
              );
            })),
      ),
    );
  }
}
