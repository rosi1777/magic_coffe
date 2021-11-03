import 'package:flutter/material.dart';
import 'package:magic_coffe/widget/sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 768) {
          return const SignIn();
        } else {
          return const SingleChildScrollView(child: SignIn());
        }
      }),
    ));
  }
}
