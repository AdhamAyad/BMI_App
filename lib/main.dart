import 'package:bmi_plus/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIPlus());
}

class BMIPlus extends StatelessWidget {
  const BMIPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



