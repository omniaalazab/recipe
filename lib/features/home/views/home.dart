import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe/core/utils/app_icons.dart';
import 'package:recipe/core/utils/styles.dart';
import 'package:recipe/features/home/data/models/recipe_model.dart';
import 'package:recipe/features/home/views/widgets/bottom_navigation_bar.dart';
import 'package:recipe/features/home/views/widgets/custom_label.dart';
import 'package:recipe/features/home/views/widgets/popular_recipe_listview.dart';
import 'package:recipe/features/home/views/widgets/popular_recipe_row.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  final List<RecipeModel> recipePopular = [
    RecipeModel(
      description: 'Healthy Taco Salad with fresh vegetable',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRiqesIHnYRrPg9Gva-XzC4TYiZcRqg45Jdw&s ",
      title: 'Taco Salad',
      time: '30 ',
      kalory: 200,
    ),
    RecipeModel(
      description: 'Healthy Taco Salad with fresh vegetable',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRiqesIHnYRrPg9Gva-XzC4TYiZcRqg45Jdw&s ",
      title: 'Taco Salad',
      time: '30 ',
      kalory: 200,
    ),
    RecipeModel(
      description: 'Healthy Taco Salad with fresh vegetable',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRiqesIHnYRrPg9Gva-XzC4TYiZcRqg45Jdw&s ",
      title: 'Taco Salad',
      time: '30 ',
      kalory: 200,
    ),
  ];

  final List<String> labels = ['Breakfast', 'Lunch', 'Dinner'];

  void _onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppIcons.iSun),
                SizedBox(width: 2.w),
                Text("Good Morning", style: Styles.textStyle14),
                Spacer(),
                SvgPicture.asset(AppIcons.iBuy),
              ],
            ),
            Text("Alena Sabyan", style: Styles.textStyle22),
            SizedBox(height: 5.h),
            Text("Category", style: Styles.textStyle20),
            SizedBox(height: 2.h),
            Row(
              children: List.generate(labels.length, (index) {
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 6, left: 6),
                    child: CustomLabel(
                      name: labels[index],
                      isSelected: selectedIndex == index,
                      onTap: () => _onTabSelected(index),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 5.h),
            PopularRecipeRow(),
            SizedBox(height: 2.h),
            PopularRecipeListView(recipePopular: recipePopular),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
        context: context,
      ),
    );
  }
}
