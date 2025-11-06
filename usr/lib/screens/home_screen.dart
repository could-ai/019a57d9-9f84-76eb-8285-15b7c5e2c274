import 'package:flutter/material.dart';
import '../models/credit_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CreditCard> _cards = [
    CreditCard(
      cardName: 'Platinum Card',
      bankName: 'American Express',
      cardType: 'Credit',
      cardNumber: '**** **** **** 1234',
      expiryDate: '12/25',
      cvv: '***',
      benefits: ['Airport lounge access', '5x points on flights', 'Hotel status'],
      tags: ['travel', 'rewards'],
      annualFee: 695.0,
    ),
    CreditCard(
      cardName: 'Sapphire Preferred',
      bankName: 'Chase',
      cardType: 'Credit',
      cardNumber: '**** **** **** 5678',
      expiryDate: '08/26',
      cvv: '***',
      benefits: ['3x points on dining', 'Travel insurance', 'No foreign transaction fees'],
      tags: ['travel', 'dining'],
      annualFee: 95.0,
    ),
    CreditCard(
      cardName: 'Freedom Unlimited',
      bankName: 'Chase',
      cardType: 'Credit',
      cardNumber: '**** **** **** 9012',
      expiryDate: '11/24',
      cvv: '***',
      benefits: ['1.5% cashback on all purchases', 'No annual fee'],
      tags: ['cashback'],
      annualFee: 0.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card Companion'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Cards',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _cards.length,
                itemBuilder: (context, index) {
                  final card = _cards[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading: const Icon(Icons.credit_card, size: 40),
                      title: Text(card.cardName),
                      subtitle: Text(card.bankName),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Navigate to card details screen
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement AI recommendation feature
                },
                icon: const Icon(Icons.lightbulb_outline),
                label: const Text('Get Smart Recommendation'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to add new card screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
