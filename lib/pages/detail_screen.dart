import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magic_coffe/model/coffe.dart';
import 'package:magic_coffe/pages/order_confirmed_screen.dart';
import 'package:magic_coffe/theme.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DetailScreen extends StatelessWidget {
  final Coffe coffe;

  const DetailScreen({Key? key, required this.coffe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 27, left: 26, right: 26),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: green,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Order',
                      style: headline5,
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      color: green,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: simpleGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(
                      coffe.imageUrl,
                      width: 152,
                      height: 121,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 62,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border(
                          bottom: BorderSide(width: 2, color: simpleWhite))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        coffe.name,
                        style: coffeName,
                      ),
                      const Ammount()
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 77,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border(
                          bottom: BorderSide(width: 2, color: simpleWhite))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ristretto',
                        style: coffeName,
                      ),
                      const Ristretto()
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 77,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border(
                          bottom: BorderSide(width: 2, color: simpleWhite))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Shipping',
                        style: coffeName,
                      ),
                      const OnsiteTakeAway()
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 77,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border(
                          bottom: BorderSide(width: 2, color: simpleWhite))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Volume, ml',
                        style: coffeName,
                      ),
                      const Volume()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 121,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: headline5,
                    ),
                    Text(
                      'IDR 5000',
                      style: headline6,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: ElevatedButton(
                        child: Text(
                          'Next',
                          style: headline4,
                        ),
                        onPressed: () {
                          showMaterialModalBottomSheet(
                              context: context,
                              builder: (context) => const ModalBottom());
                        },
                        style: ElevatedButton.styleFrom(
                            primary: green,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20)),
                      )),
                ),
                const SizedBox(
                  height: 21,
                )
              ],
            ),
          ),
        );
      })),
    );
  }
}

class ModalBottom extends StatefulWidget {
  const ModalBottom({Key? key}) : super(key: key);

  @override
  _ModalBottomState createState() => _ModalBottomState();
}

class _ModalBottomState extends State<ModalBottom> {
  int? _val = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 26, right: 26, top: 35),
        height: 662,
        width: MediaQuery.of(context).size.width,
        color: white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Order payment',
            style: headline7,
          ),
          const SizedBox(height: 57),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: simpleGrey),
                child: Icon(
                  Icons.shopping_cart,
                  color: black,
                ),
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fathorrosi',
                    style: headline8,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    'Magic Coffee store\nBradford BD1 1PR',
                    style: subTitle6,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 43,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 81,
            decoration: BoxDecoration(
                color: simpleGrey, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                  value: 1,
                  groupValue: _val,
                  onChanged: (value) {
                    setState(() {
                      _val = value as int?;
                    });
                  },
                  activeColor: green,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Online Payment', style: coffeName),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Assist Belarus',
                      style: subTitle7,
                    )
                  ],
                ),
                Image.asset('assets/images/assistlogo.png')
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 81,
            decoration: BoxDecoration(
                color: simpleGrey, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                  value: 2,
                  groupValue: _val,
                  onChanged: (value) {
                    setState(() {
                      _val = value as int?;
                    });
                  },
                  activeColor: green,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Credit Card', style: coffeName),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      '2540 xxxx xxxx 2648',
                      style: subTitle7,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/visa.png'),
                    Image.asset('assets/images/card.png')
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Amount',
                style: headline8,
              ),
              Text(
                'IDR 5000',
                style: headline8,
              )
            ],
          ),
          const SizedBox(
            height: 47,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Price',
                    style: subTitle7,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'IDR 5000',
                    style: headline9,
                  )
                ],
              ),
              SizedBox(
                width: 162,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ElevatedButton(
                      child: Text(
                        'Pay Now',
                        style: headline4,
                      ),
                      onPressed: () {
                        showMaterialModalBottomSheet(
                            context: context,
                            builder: (context) => const OrderConfirmedScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          primary: green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20)),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class Ammount extends StatefulWidget {
  const Ammount({Key? key}) : super(key: key);

  @override
  _AmmountState createState() => _AmmountState();
}

class _AmmountState extends State<Ammount> {
  int _ammount = 1;

  void _ammountAdd() {
    setState(() {
      _ammount++;
    });
  }

  void _ammountSubtact() {
    setState(() {
      _ammount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 37,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 2, color: simpleWhite)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.remove, size: 21),
              color: green,
              onPressed: _ammountSubtact),
          Text(
            '$_ammount',
            style: coffeName,
          ),
          IconButton(
              icon: const Icon(Icons.add, size: 21),
              color: green,
              onPressed: _ammountAdd)
        ],
      ),
    );
  }
}

class Ristretto extends StatefulWidget {
  const Ristretto({Key? key}) : super(key: key);

  @override
  _RistrettoState createState() => _RistrettoState();
}

class _RistrettoState extends State<Ristretto> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            child: const Text('One'),
            style: TextButton.styleFrom(
                primary: isClicked ? white : black,
                backgroundColor: isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
        const SizedBox(
          width: 8,
        ),
        TextButton(
            child: const Text('Two'),
            style: TextButton.styleFrom(
                primary: !isClicked ? white : black,
                backgroundColor: !isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
      ],
    );
  }
}

class OnsiteTakeAway extends StatefulWidget {
  const OnsiteTakeAway({Key? key}) : super(key: key);

  @override
  _OnsiteTakeAwayState createState() => _OnsiteTakeAwayState();
}

class _OnsiteTakeAwayState extends State<OnsiteTakeAway> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            child: const Text('Onsite'),
            style: TextButton.styleFrom(
                primary: isClicked ? white : black,
                backgroundColor: isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
        const SizedBox(
          width: 8,
        ),
        TextButton(
            child: const Text('Take Away'),
            style: TextButton.styleFrom(
                primary: !isClicked ? white : black,
                backgroundColor: !isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
      ],
    );
  }
}

class Volume extends StatefulWidget {
  const Volume({Key? key}) : super(key: key);

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            child: const Text('350'),
            style: TextButton.styleFrom(
                primary: isClicked ? white : black,
                backgroundColor: isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
        const SizedBox(
          width: 8,
        ),
        TextButton(
            child: const Text('450'),
            style: TextButton.styleFrom(
                primary: !isClicked ? white : black,
                backgroundColor: !isClicked ? green : white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: simpleWhite),
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            }),
      ],
    );
  }
}
