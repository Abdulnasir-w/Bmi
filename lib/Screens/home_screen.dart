import 'package:bmi/Config/colors.dart';
import 'package:bmi/Config/fonts.dart';
import 'package:flutter/material.dart';
import '../Components/button.dart';
import '../Utils/age_selector.dart';
import '../Utils/height_selector.dart';
import '../Utils/radio_btn.dart';
import '../Utils/weight_selector.dart';
import 'calcutation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String gender = '';
  double height = 150.0;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 109, left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Welcome ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "BMI Calculator",
                  style: primaryStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                RadioButton(
                  onGenderChange: (newGender) {
                    setState(() {
                      gender = newGender;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 170,
                            height: 460,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: containerColor,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Height (CM)",
                                  style: myStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: HeightSelector(
                                    onHeightChanged: (newHeight) {
                                      setState(() {
                                        height = newHeight;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          WeightSelector(
                            onWeightChanged: (newWeight) {
                              setState(() {
                                weight = newWeight;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          AgeSelector(
                            onAgeChanged: (newAge) {
                              setState(() {
                                age = newAge;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CalculationScreen(
                            age: age,
                            gender: gender,
                            height: height,
                            weight: weight,
                          ),
                        ),
                      );
                    },
                    title: "Calculate")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
