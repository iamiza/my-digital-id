import 'package:digital_cards/card_design.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDigitalCard());
}

class MyDigitalCard extends StatelessWidget {
  const MyDigitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CardDesign(),
    );
  }
}
