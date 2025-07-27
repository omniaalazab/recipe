import 'package:flutter/material.dart';
import 'package:recipe/core/utils/color_helper.dart';
import 'package:recipe/core/utils/styles.dart';
import 'package:sizer/sizer.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    this.onTap,
    required this.isSelected,
    required this.name,
  });

  final void Function()? onTap;
  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 20.w,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isSelected
              ? ColorsHelper.lightBlue
              : Colors.grey.withAlpha(120),
        ),
        child: Center(
          child: Text(
            name,
            style: Styles.textStyle16.copyWith(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
