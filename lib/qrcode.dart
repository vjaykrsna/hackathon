import 'package:flutter/material.dart';
import 'package:hackathon/index.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class QrCode extends StatelessWidget {
  final String data;

  const QrCode({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Scan this QrCode to get product details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              QrImageView(
                data: data,
                version: QrVersions.auto,
                size: 200.0,
              ),
              const Text(
                  'If you are satissfied with the product after going through the detial then proceed to buy the item by paying through the button below'),
              ElevatedButton.icon(
                  onPressed: () async {
                    Uri url = Uri.parse(
                        'https://pay.upilink.in/pay/9262711175@paytm?am=10');

                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  icon: const Icon(Icons.payment_rounded),
                  label: const Text('Proceed to pay')),
            ],
          ),
        ));
  }
}
