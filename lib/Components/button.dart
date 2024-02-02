import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final TextStyle style;
  final double width;
  final double height;
  final Color color;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.style,
    required this.title,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
