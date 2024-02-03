import 'package:bmi/Config/colors.dart';
import 'package:bmi/Config/fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 380,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: primaryBtnColor,
        ),
        child: Center(
          child: Text(
            title,
            style: btnTextStyle,
          ),
        ),
      ),
    );
  }
}
