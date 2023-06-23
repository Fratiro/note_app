import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius = 8,
      this.buttonWidth,
      required this.buttonHeight,
      required this.backgroundColor,
      required this.buttonText,
      required this.textColor});

  final double borderRadius;
  final double? buttonWidth;
  final double buttonHeight;
  final Color backgroundColor;
  final String buttonText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: backgroundColor,
          minimumSize: Size(
              buttonWidth ?? MediaQuery.of(context).size.width, buttonHeight)),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
