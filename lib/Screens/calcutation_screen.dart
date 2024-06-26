import 'dart:math';

import 'package:bmi/Components/button.dart';
import 'package:bmi/Screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../Components/gauge.dart';
import '../Config/fonts.dart';

class CalculationScreen extends StatefulWidget {
  final String gender;
  final int age;
  final int weight;
  final double height;
  const CalculationScreen({
    super.key,
    required this.age,
    required this.gender,
    required this.height,
    required this.weight,
  });

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  late double bmi;

  @override
  void initState() {
    super.initState();
    calculateBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculation',
          style: myStyle,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your BMI is",
              style: myStyle,
            ),
            const SizedBox(
              height: 60,
            ),
            BmiGauge(bmi: bmi),
            Text(
              getBMIStatus(bmi, widget.gender),
              style: primaryStyle,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              title: "Again Calculate",
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double heightM = widget.height / 100;
    bmi = widget.weight / pow(heightM, 2);
  }

  String getBMIStatus(double bmi, String gender) {
    if (gender == 'Male') {
      if (bmi < 18) {
        return 'Under weight Male';
      } else if (bmi >= 18 && bmi < 25) {
        return 'Normal weight Male';
      } else if (bmi >= 25 && bmi < 30) {
        return 'Over weight Male';
      } else {
        return 'Obesity Male';
      }
    } else if (gender == 'Female') {
      if (bmi < 18) {
        return 'Under weight FeMale';
      } else if (bmi >= 18 && bmi < 25) {
        return 'Normal weight FeMale';
      } else if (bmi >= 25 && bmi < 30) {
        return 'Over weight FeMale';
      } else {
        return 'Obesity FeMale';
      }
    } else {
      return 'Invalid gender';
    }
  }
}
