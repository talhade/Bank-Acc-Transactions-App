import 'package:bank_acc_ui/app_utils.dart';
import 'package:bank_acc_ui/models/transactions_model.dart';
import 'package:bank_acc_ui/screens/transactions_details.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Hello Emily,',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/notification.png',
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/woman.png',
                  width: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width,
                height: 280,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const CreditCard();
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: ScrollingDotsEffect(
                  activeDotColor: transactionsbg,
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainPageButton(
                  imageUrl: 'assets/plus.png',
                  color: add_money_bg,
                  title: 'Add Money',
                  onTap: () {},
                ),
                MainPageButton(
                  imageUrl: 'assets/reload.png',
                  color: banking_bg,
                  title: 'Banking',
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: banking_bg,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          //TRANSACTIONS CARDS
          ListView.builder(
              itemCount: transactionList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                Transactions transactions = transactionList[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              TransactionsDetails(tranations: transactions))),
                  child: TransactionsTile(
                      icon: transactions.icon,
                      title: transactions.title,
                      date: transactions.date,
                      money: transactions.money,
                      percentage: transactions.percentage),
                );
              })
        ],
      ),
    );
  }
}
