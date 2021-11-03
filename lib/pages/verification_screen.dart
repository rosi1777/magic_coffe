import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/home_screen.dart';
import 'package:magic_coffe/theme.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
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
                      'Verification',
                      style: headline2,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Enter the OTP code we sent you',
                      style: subTitle2,
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    VerificationCode(
                        length: 6,
                        textStyle: const TextStyle(fontSize: 20),
                        underlineColor: green,
                        keyboardType: TextInputType.number,
                        onCompleted: (value) {
                          setState(() {
                            code = value;
                          });
                        },
                        onEditing: (value) {}),
                  ],
                ),
              )
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        backgroundColor: green,
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
      ),
    );
  }
}
