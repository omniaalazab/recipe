
import 'package:flutter/material.dart';

class SplashImagesRow extends StatelessWidget {
  const SplashImagesRow({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
  });
  final String imagePath1;
  final String imagePath2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Image.asset(imagePath1), Image.asset(imagePath2)],
    );
  }
}
