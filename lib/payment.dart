import 'package:flutter/material.dart';

class PaymentSceen extends StatelessWidget {
  final int amount;
  const PaymentSceen({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.money),
            Text("The amount is : $amount"),
          ],
        ),
      ),
    );
  }
}
