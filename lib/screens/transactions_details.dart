import 'package:bank_acc_ui/app_utils.dart';
import 'package:bank_acc_ui/models/transactions_model.dart';
import 'package:flutter/material.dart';

class TransactionsDetails extends StatelessWidget {
  final Transactions tranations;
  const TransactionsDetails({
    Key? key,
    required this.tranations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 1,
          iconTheme: IconThemeData(color: transactionsbg),
          title: Text(
            '${tranations.title} Details',
            style:
                TextStyle(color: transactionsbg, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: transactionsbg,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    tranations.icon,
                    height: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        tranations.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const _MyDivider(),
                    _detailsTileBuilder(
                      title: 'Date:',
                      data: tranations.date,
                    ),
                    const _MyDivider(),
                    _detailsTileBuilder(
                        title: 'Expense:', data: tranations.money),
                    const _MyDivider(),
                    _detailsTileBuilder(
                        title: 'Percentage:', data: tranations.percentage),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

// ignore: camel_case_types
class _detailsTileBuilder extends StatelessWidget {
  final String title;
  final String data;
  const _detailsTileBuilder({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyDivider extends StatelessWidget {
  const _MyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 200,
      color: Colors.white,
    );
  }
}
