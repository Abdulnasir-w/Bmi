import 'package:bmi/Components/add_subtract_btn.dart';
import 'package:bmi/Config/colors.dart';
import 'package:flutter/material.dart';

import '../Config/fonts.dart';

class AgeSelector extends StatefulWidget {
  final void Function(int) onAgeChanged;
  const AgeSelector({
    super.key,
    required this.onAgeChanged,
  });

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: containerColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Age",
            style: myStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            age.toString(),
            style: secondryStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          AddAndSubtractButton(
            initialValue: age,
            onValueChange: (newAge) {
              setState(() {
                age = newAge;
                widget.onAgeChanged(age);
              });
            },
          )
        ],
      ),
    );
  }
}
