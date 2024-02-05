import 'package:bmi/Components/add_subtract_btn.dart';
import 'package:bmi/Config/fonts.dart';
import 'package:flutter/material.dart';

import '../Config/colors.dart';

class WeightSelector extends StatefulWidget {
  final void Function(int) onWeightChanged;
  const WeightSelector({
    super.key,
    required this.onWeightChanged,
  });

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 220,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Weight",
            style: myStyle,
          ),
          const SizedBox(height: 10),
          Text(weight.toString(), style: secondryStyle),
          const SizedBox(
            height: 10,
          ),
          AddAndSubtractButton(
            initialValue: weight,
            onValueChange: (newWeight) {
              setState(() {
                weight = newWeight;
                widget.onWeightChanged(weight);
              });
            },
          ),
        ],
      ),
    );
  }
}
