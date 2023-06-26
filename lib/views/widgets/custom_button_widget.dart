import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius = 8,
    this.buttonWidth,
    required this.buttonHeight,
    required this.backgroundColor,
    required this.buttonText,
    required this.textColor,
    required this.buttonOnPress,
    this.isLoading = false,
    required this.indicatorColor,
  });

  final double borderRadius;
  final double? buttonWidth;
  final double buttonHeight;
  final Color backgroundColor;
  final String buttonText;
  final Color textColor;
  final void Function()? buttonOnPress;
  final bool isLoading;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonOnPress,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: backgroundColor,
          minimumSize: Size(
              buttonWidth ?? MediaQuery.of(context).size.width, buttonHeight)),
      child: isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: indicatorColor,
              ),
            )
          : Text(
              buttonText,
              style: TextStyle(color: textColor),
            ),
    );
  }
}
