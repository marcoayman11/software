import 'package:flutter/material.dart';
import 'package:project_software/screens/home/homescreen.dart';
import 'package:provider/provider.dart';

import '../../provider/myprovider.dart';

class Subscription extends StatelessWidget {
  static const String nameroute = "subscription";
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Subscribe Now!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Choose a subscription plan:',
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            SubscriptionOption(
              plan: 'Basic',
              price: '\$9.99/month',
            ),
            SubscriptionOption(
              plan: 'Standard',
              price: '\$19.99/ 3 months',
            ),
            SubscriptionOption(
              plan: 'Premium',
              price: '\$99.99/one year ',
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context,Home_Screen.nameroute);
              },
              child: Text('Subscribe',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubscriptionOption extends StatelessWidget {
  final String plan;
  final String price;

  SubscriptionOption({required this.plan, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(plan),
        subtitle: Text(price),
        onTap: () {
          print('Selected $plan');
        },
      ),
    );
  }
}