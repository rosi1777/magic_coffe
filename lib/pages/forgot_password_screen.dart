import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/verification_screen.dart';
import 'package:magic_coffe/theme.dart';
import 'package:magic_coffe/widget/forgot_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return const ForgotPassword();
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        backgroundColor: green,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationScreen()));
        },
      ),
    );
  }
}
