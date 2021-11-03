class Radeem {
  String imageUrl;
  String coffe;
  String expired;
  String point;

  Radeem(
      {required this.imageUrl,
      required this.coffe,
      required this.expired,
      required this.point});
}

var radeemList = [
  Radeem(
      imageUrl: 'assets/images/americano.png',
      coffe: 'Americano',
      expired: 'Valid until 04.07.21',
      point: '1340'),
  Radeem(
      imageUrl: 'assets/images/cappucino.png',
      coffe: 'Cappucino',
      expired: 'Valid until 04.07.21',
      point: '1340'),
  Radeem(
      imageUrl: 'assets/images/espresso.png',
      coffe: 'Espresso',
      expired: 'Valid until 04.07.21',
      point: '1340'),
  Radeem(
      imageUrl: 'assets/images/latte.png',
      coffe: 'Latte',
      expired: 'Valid until 02.21.21',
      point: '1340')
];
