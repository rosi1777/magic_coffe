import 'package:flutter/material.dart';
import 'package:magic_coffe/widget/floating_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: FloatingNavigationBar()),
    );
  }
}
