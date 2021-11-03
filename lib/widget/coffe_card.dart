import 'package:flutter/material.dart';
import 'package:magic_coffe/model/coffe.dart';
import 'package:magic_coffe/pages/detail_screen.dart';
import 'package:magic_coffe/theme.dart';

class CofferCard extends StatelessWidget {
  const CofferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        final Coffe coffe = coffeList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(coffe: coffe)));
          },
          child: Container(
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(coffe.imageUrl),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  coffe.name,
                  style: coffeName,
                )
              ],
            ),
          ),
        );
      },
      itemCount: coffeList.length,
    );
  }
}
