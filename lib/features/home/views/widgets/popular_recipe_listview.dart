import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe/core/utils/app_icons.dart';
import 'package:recipe/core/utils/styles.dart';
import 'package:recipe/features/home/data/models/recipe_model.dart';
import 'package:sizer/sizer.dart';

class PopularRecipeListView extends StatelessWidget {
  const PopularRecipeListView({super.key, required this.recipePopular});

  final List<RecipeModel> recipePopular;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipePopular.length,
        itemBuilder: (context, index) {
          final recipe = recipePopular[index];
          return SizedBox(
            width: 50.w,

            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.sp),
                          child: Image.network(recipe.imageUrl, width: 50.w),
                        ),
                        Positioned(
                          right: 2.w,
                          top: 1.h,
                          child: SvgPicture.asset(
                            AppIcons.iHeart,
                            height: 2.h,
                            width: 5.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Text(recipe.title, style: Styles.textStyle16),
                    SizedBox(height: 1.h),
                    Text(
                      recipe.description,
                      style: Styles.textStyle18,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppIcons.iKal),
                        Text(
                          '${recipe.kalory} kcal',
                          style: Styles.textStyle14,
                        ),
                        SvgPicture.asset(AppIcons.iTime),
                        Text('${recipe.time} min', style: Styles.textStyle14),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
