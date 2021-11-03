import 'package:flutter/material.dart';
import 'package:magic_coffe/model/reward.dart';
import 'package:magic_coffe/theme.dart';

class OnGoingCard extends StatelessWidget {
  const OnGoingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Reward reward = rewardList[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 89,
          decoration: BoxDecoration(
              color: white,
              border: Border(bottom: BorderSide(width: 2, color: simpleWhite))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reward.coffe,
                    style: coffeName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    reward.dateTime,
                    style: subTitle7,
                  )
                ],
              ),
              Text(
                reward.price,
                style: headline5,
              )
            ],
          ),
        );
      },
      itemCount: rewardList.length,
    );
  }
}
