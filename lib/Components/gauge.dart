import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../Config/fonts.dart';

class BmiGauge extends StatelessWidget {
  final double bmi;
  const BmiGauge({
    super.key,
    required this.bmi,
  });

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          minimum: 0,
          maximum: 50,
          ranges: [
            GaugeRange(
              startValue: 0.0,
              endValue: 9,
              label: "Under",
              labelStyle: const GaugeTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              color: const Color.fromARGB(255, 58, 198, 223),
            ),
            GaugeRange(
              startValue: 9,
              endValue: 18,
              label: "Under",
              labelStyle: const GaugeTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              color: const Color.fromARGB(255, 240, 124, 115),
            ),
            GaugeRange(
              startValue: 18,
              endValue: 25,
              label: "Normal",
              labelStyle: const GaugeTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              color: const Color.fromARGB(255, 64, 243, 70),
            ),
            GaugeRange(
              startValue: 25,
              endValue: 38,
              label: "Over",
              labelStyle: const GaugeTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              color: const Color.fromARGB(255, 231, 217, 90),
            ),
            GaugeRange(
              startValue: 38,
              endValue: 50,
              label: "Obesity",
              labelStyle: const GaugeTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              color: const Color.fromARGB(255, 209, 77, 67),
            ),
          ],
          pointers: [
            NeedlePointer(
              value: bmi,
            ),
          ],
          annotations: [
            GaugeAnnotation(
              widget: Text(
                double.parse(bmi.toStringAsFixed(2)).toString(),
                style: primaryStyle,
              ),
              angle: 90,
              positionFactor: 0.5,
            ),
          ],
        ),
      ],
    );
  }
}
