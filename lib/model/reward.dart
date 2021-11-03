class Reward {
  String coffe;
  String dateTime;
  String point;
  String price;

  Reward(
      {required this.coffe,
      required this.dateTime,
      required this.point,
      required this.price});
}

var rewardList = [
  Reward(
      coffe: 'Americano',
      dateTime: '24 June | 12:30',
      point: '+ 12',
      price: 'IDR 5000'),
  Reward(
      coffe: 'Cappucino',
      dateTime: '22 June | 08:30',
      point: '+ 12',
      price: 'IDR 5000'),
  Reward(
      coffe: 'Espresso',
      dateTime: '16 June | 10:48',
      point: '+ 12',
      price: 'IDR 5000'),
  Reward(
      coffe: 'Latte',
      dateTime: '12 May | 11:25',
      point: '+ 12',
      price: 'IDR 5000')
];
