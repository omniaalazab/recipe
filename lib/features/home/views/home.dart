import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe/core/utils/app_icons.dart';
import 'package:recipe/core/utils/styles.dart';
import 'package:recipe/features/home/views/widgets/bottom_navigation_bar.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppIcons.iSun),
                Text("Good Morning", style: Styles.textStyle14),
                Spacer(),
                SvgPicture.asset(AppIcons.iBuy),
              ],
            ),
            Text("Alena Sabyan", style: Styles.textStyle24),
            SizedBox(height: 5.h),
            Text("Featured", style: Styles.textStyle20),
            SizedBox(height: 5.h),
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
