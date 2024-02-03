import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Config/colors.dart';
import '../Config/fonts.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double value = 150.0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: containerColor),
        child: Column(
          children: [
            Text(
              "Height (CM)",
              style: myStyle,
            ),
            SfSlider.vertical(
              min: 100.0,
              max: 250.0,
              value: value,
              interval: 10,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) {
                setState(() {
                  value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
