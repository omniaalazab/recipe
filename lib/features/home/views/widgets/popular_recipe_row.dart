import 'package:flutter/material.dart';
import 'package:recipe/core/utils/styles.dart';

class PopularRecipeRow extends StatelessWidget {
  const PopularRecipeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Popular Recipes", style: Styles.textStyle20),
        TextButton(
          onPressed: () {},
          child: Text(
            "see all",
            style: Styles.textStyle14.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
