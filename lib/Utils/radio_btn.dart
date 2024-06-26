import 'package:bmi/Config/colors.dart';
import 'package:bmi/Config/fonts.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  final void Function(String)? onGenderChange;
  const RadioButton({
    super.key,
    required this.onGenderChange,
  });

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? gender;

  void _handleGenderChange(String? value) {
    setState(() {
      gender = value;
    });
    widget.onGenderChange?.call(gender!);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 170,
          height: 60,
          decoration: BoxDecoration(
            color: primaryBtnColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                value: "Male",
                groupValue: gender,
                onChanged: _handleGenderChange,
                activeColor: Colors.white,
                fillColor: WidgetStateProperty.all(Colors.white),
                overlayColor: WidgetStateProperty.all(Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  _handleGenderChange("Male");
                },
                child: Text(
                  "Male",
                  style: primarybtnTextStyle,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 170,
          height: 60,
          decoration: BoxDecoration(
            color: secondryBtnColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                value: "Female",
                groupValue: gender,
                onChanged: _handleGenderChange,
                activeColor: secondryTextColor,
                fillColor: WidgetStateProperty.all(secondryTextColor),
                overlayColor: WidgetStateProperty.all(secondryTextColor),
              ),
              GestureDetector(
                onTap: () {
                  _handleGenderChange("Female");
                },
                child: Text(
                  "Female",
                  style: secondrybtnTextStyle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
