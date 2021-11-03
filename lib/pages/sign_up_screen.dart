import 'package:flutter/material.dart';
import 'package:magic_coffe/widget/sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 768) {
          return const SignUp();
        } else {
          return const SingleChildScrollView(child: SignUp());
        }
      }),
    ));
  }
}
