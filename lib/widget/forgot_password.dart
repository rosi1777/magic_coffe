import 'package:flutter/material.dart';
import 'package:magic_coffe/theme.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(top: 30)),
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: green,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        const SizedBox(
          height: 46,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 46,
            right: 46,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot Password?',
                style: headline2,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Enter your email address',
                style: subTitle2,
              ),
              const SizedBox(
                height: 46,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: inputDecoration,
                height: 60.0,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: input,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.email,
                      color: black,
                    ),
                    hintText: 'Email Address',
                    hintStyle: textHint,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
