import 'package:bmi/Model/collect_values.dart';
import 'package:flutter/material.dart';
import '../Utils/age_selector.dart';
import '../Utils/height_selector.dart';
import '../Utils/radio_btn.dart';
import '../Utils/weight_selector.dart';

class MainClass extends StatefulWidget {
  const MainClass({super.key});

  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  late int age;
  late int weight;
  late double height;
  late String gender;

  late DataModel dataModel;

  @override
  void initState() {
    super.initState();
    age = 18;
    weight = 50;
    height = 150.0;
    gender = "";
    dataModel = DataModel(
      age: age,
      weight: weight,
      gender: gender,
      height: height,
    );
  }

  void updateAge(int newAge) {
    setState(() {
      age = newAge;
      dataModel = DataModel(
        age: age,
        weight: weight,
        gender: gender,
        height: height,
      );
    });
  }

  void updateWeight(int newWeight) {
    setState(() {
      weight = newWeight;
      dataModel = DataModel(
        age: age,
        weight: weight,
        gender: gender,
        height: height,
      );
    });
  }

  void updateHeight(double newHeight) {
    setState(() {
      height = newHeight;
      dataModel = DataModel(
        age: age,
        weight: weight,
        gender: gender,
        height: height,
      );
    });
  }

  void updateGender(String newGender) {
    setState(() {
      gender = newGender;
      dataModel = DataModel(
        age: age,
        weight: weight,
        gender: gender,
        height: height,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AgeSelector(onAgeChanged: updateAge),
        HeightSelector(onHeightChanged: updateHeight),
        WeightSelector(onWeightChanged: updateWeight),
        RadioButton(onGenderChange: updateGender),
      ],
    );
  }
}
