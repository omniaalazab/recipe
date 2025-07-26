import 'package:flutter/material.dart';
import 'package:recipe/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.buttonIcon = const SizedBox(width: .5),
    required this.onPressedFunction,
    this.sideColor,
    this.alignButton = MainAxisAlignment.center,
    this.widthButton = double.infinity,
    this.textColor = Colors.white,
    required this.buttonColor,
  });
  final String buttonText;
  final Color? buttonColor;
  final Color textColor;

  final double widthButton;
  final Function()? onPressedFunction;
  final MainAxisAlignment alignButton;
  final Widget buttonIcon;
  final Color? sideColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: sideColor ?? Colors.transparent, width: 0.5),
        minimumSize: Size(widthButton, 55),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Text(
        buttonText,
        style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
