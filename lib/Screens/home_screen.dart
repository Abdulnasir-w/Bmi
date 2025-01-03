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
            padding: const EdgeInsets.only(top: 80, left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome ",
                  style: myStyle,
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
                                  child: SizedBox(
                                    width: 150,
                                    child: HeightSelector(
                                      onHeightChanged: (newHeight) {
                                        setState(() {
                                          height = newHeight;
                                        });
                                      },
                                    ),
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
                    if (gender.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Center(
                          child: Text(
                            'Please Select a Gender.',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        duration: const Duration(seconds: 2),
                        backgroundColor: Colors.redAccent,
                        elevation: 4,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust border radius as needed
                          side: const BorderSide(
                            color: Colors.grey, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                      ));
                    } else {
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
                      ).then((_) {
                        setState(() {
                          gender = '';
                          height = 150.0;
                          weight = 50;
                          age = 18;
                        });
                      });
                    }
                  },
                  title: "Calculate",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
