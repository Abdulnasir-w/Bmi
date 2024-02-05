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
                onChanged: (value) {
                  setState(() {
                    gender = value;
                    widget.onGenderChange?.call(gender!);
                  });
                },
                activeColor: Colors.white,
                fillColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = "Male";
                  });
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
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
                activeColor: secondryTextColor,
                fillColor: MaterialStateProperty.all(secondryTextColor),
                overlayColor: MaterialStateProperty.all(secondryTextColor),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = "Female";
                    widget.onGenderChange?.call(gender!);
                  });
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
