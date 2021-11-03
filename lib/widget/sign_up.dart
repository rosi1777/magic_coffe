import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/home_screen.dart';
import 'package:magic_coffe/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                'Sign up',
                style: headline2,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Create an account here',
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
                  keyboardType: TextInputType.name,
                  style: input,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.person,
                      color: black,
                    ),
                    hintText: 'Name',
                    hintStyle: textHint,
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
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
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: inputDecoration,
                height: 60.0,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  style: input,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: black,
                    ),
                    hintText: 'Password',
                    hintStyle: textHint,
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Center(
                child: Text(
                  'By signing up you agree with our Terms of Use',
                  style: text,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                width: size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                      child: Text(
                        'Sign Up',
                        style: headline4,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20)),
                    )),
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  Text(
                    'Already a Member?',
                    style: subTitle2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
                        style: subTitle3,
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
