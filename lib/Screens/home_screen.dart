import 'package:bmi/Config/colors.dart';
import 'package:bmi/Config/fonts.dart';
import 'package:flutter/material.dart';
import '../Components/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      title: "Male",
                      color: primaryBtnColor,
                      width: 170,
                      height: 50,
                      style: const TextStyle(
                          fontSize: 15,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500),
                      onPressed: () {},
                    ),
                    CustomButton(
                      title: "Female",
                      color: secondryBtnColor,
                      width: 170,
                      height: 50,
                      style: const TextStyle(
                        fontSize: 15,
                        color: secondryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
