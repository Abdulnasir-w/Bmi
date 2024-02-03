import 'package:flutter/material.dart';

import '../Config/colors.dart';

class AddAndSubtractButton extends StatefulWidget {
  final void Function(int newValue)? onValueChange;
  final int initialValue;
  const AddAndSubtractButton({
    super.key,
    required this.onValueChange,
    required this.initialValue,
  });

  @override
  State<AddAndSubtractButton> createState() => _AddAndSubtractButtonState();
}

class _AddAndSubtractButtonState extends State<AddAndSubtractButton> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: primaryBtnColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                if (value > 0) {
                  setState(() {
                    value--;
                    widget.onValueChange?.call(value);
                  });
                }
              },
              icon: const Icon(
                Icons.remove,
                color: secondryBtnColor,
              ),
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: primaryBtnColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  value++;
                  widget.onValueChange?.call(value);
                });
              },
              icon: const Icon(
                Icons.add,
                color: secondryBtnColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
