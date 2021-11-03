import 'package:flutter/material.dart';
import 'package:magic_coffe/pages/sign_in_screen.dart';
import 'package:magic_coffe/theme.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 768) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 323,
                  child: Image.asset(
                    'assets/images/intro.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // Image.asset('assets/images/intro.png'),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Feel yourself like',
                  style: headline1,
                ),
                Text(
                  'a barista!',
                  style: headline1,
                ),
                Text(
                  'Magic coffee on order.',
                  style: subTitle1,
                ),
                const SizedBox(
                  height: 170,
                ),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 321,
                      height: 323,
                      child: Image.asset(
                        'assets/images/intro.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Image.asset('assets/images/intro.png'),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Feel yourself like',
                      style: headline1,
                    ),
                    Text(
                      'a barista!',
                      style: headline1,
                    ),
                    Text(
                      'Magic coffee on order.',
                      style: subTitle1,
                    ),
                    const SizedBox(
                      height: 170,
                    ),
                  ],
                ),
              ),
            );
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        backgroundColor: green,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignInScreen()));
        },
      ),
    );
  }
}
