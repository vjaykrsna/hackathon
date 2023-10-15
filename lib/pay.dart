import 'package:flutter/material.dart';
import 'index.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Page'),
      ),
      body: Column(
        children: [
          const Text('Scan QR to make payment'),
          Image.asset('assets/paytm2.png')
        ],
      ),
    );
  }
}