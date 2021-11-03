import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/order_screen.dart';
import 'package:magic_coffe/pages/reward_screen.dart';
import 'package:magic_coffe/pages/sign_up_screen.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/home.dart';

class FloatingNavigationBar extends StatelessWidget {
  const FloatingNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      color: white,
      items: [
        FloatingNavBarItem(
          iconData: Icons.home,
          title: 'Home',
          page: const Home(),
        ),
        FloatingNavBarItem(
          iconData: Icons.card_giftcard,
          title: 'Reward',
          page: const RewardScreen(),
        ),
        FloatingNavBarItem(
          iconData: Icons.shopping_bag,
          title: 'Order',
          page: const OrderScreen(),
        )
      ],
      selectedIconColor: green,
      unselectedIconColor: grey,
      hapticFeedback: true,
      horizontalPadding: 30,
    );
  }
}
