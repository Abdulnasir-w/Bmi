import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatefulWidget {
  final void Function(double) onHeightChanged;
  const HeightSelector({
    super.key,
    required this.onHeightChanged,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 150.0;
  @override
  Widget build(BuildContext context) {
    return SfSlider.vertical(
      min: 100.0,
      max: 250.0,
      value: height,
      interval: 10,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 1,
      onChanged: (dynamic value) {
        setState(() {
          height = value as double;
          widget.onHeightChanged(height);
        });
      },
    );
  }
}
