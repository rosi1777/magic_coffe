import 'package:flutter/material.dart';
import 'package:magic_coffe/model/radeem.dart';
import 'package:magic_coffe/theme.dart';

class RadeemCard extends StatelessWidget {
  const RadeemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Radeem radeem = radeemList[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 74,
          decoration: BoxDecoration(
              color: white,
              border: Border(bottom: BorderSide(width: 2, color: simpleWhite))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 82,
                height: 61,
                child: Image.asset(
                  radeem.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    radeem.coffe,
                    style: coffeName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    radeem.expired,
                    style: subTitle7,
                  )
                ],
              ),
              TextButton(
                  child: Text(radeem.point),
                  style: TextButton.styleFrom(
                      primary: white,
                      backgroundColor: green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {}),
            ],
          ),
        );
      },
      itemCount: radeemList.length,
    );
  }
}
