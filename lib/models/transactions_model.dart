class Transactions {
  final String icon;
  final String title;
  final String date;
  final String money;
  final String percentage;

  Transactions(this.icon, this.title, this.date, this.money, this.percentage);
}

List<Transactions> transactionList = [
  Transactions(
    'assets/paws.png',
    'Pet Service',
    'Sep 30th, 2022',
    '120',
    '0.42',
  ),
  Transactions(
    'assets/weight.png',
    'Fitness Monthly',
    'Sep 23th, 2022',
    '54.2',
    '2.1',
  ),
  Transactions(
    'assets/apple.png',
    'Grocery',
    'Sep 11th, 2022',
    '80.00',
    '7.4',
  ),
  Transactions(
    'assets/netflix.png',
    'Netflix Subscription',
    'Sep 9th, 2022',
    '20.99',
    '1.34',
  ),
  Transactions(
    'assets/netflix.png',
    'Netflix Subscription',
    'Sep 9th, 2022',
    '20.99',
    '1.31',
  ),
];
