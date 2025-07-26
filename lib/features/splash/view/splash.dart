import 'package:flutter/material.dart';
import 'package:recipe/core/utils/color_helper.dart';
import 'package:recipe/core/utils/styles.dart';
import 'package:recipe/core/widgets/custom_elevated_button.dart';
import 'package:recipe/features/splash/view/widgets/splah_image_row.dart';
import 'package:sizer/sizer.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsHelper.lightBlue,
      body: SafeArea(
        child: Stack(
          children: [
            /// Background pattern image
            Positioned.fill(
              child: Image.asset(
                "assets/images/Pattern.png",
                fit: BoxFit.cover,
              ),
            ),

            /// Scrollable content
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Some space at the top
                  SizedBox(height: 10.h),

                  /// Rows of images
                  Container(
                    width: 100.w,
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Illustration.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Column(
                      children: [
                        SplashImagesRow(
                          imagePath1: "assets/images/Group4.png",
                          imagePath2: "assets/images/Group3.png",
                        ),

                        SizedBox(height: 2.h),
                        SplashImagesRow(
                          imagePath1: "assets/images/Group5.png",
                          imagePath2: "assets/images/Group2.png",
                        ),

                        SizedBox(height: 2.h),
                        SplashImagesRow(
                          imagePath1: "assets/images/Group.png",
                          imagePath2: "assets/images/Group1.png",
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8.h),

                  /// Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(
                      "Help your path to health goals with happiness",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: Styles.textStyle20.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 5.h),

                  /// Buttons
                  CustomElevatedButton(
                    widthButton: 90.w,
                    buttonText: "Login",
                    onPressedFunction: () {},
                    buttonColor: Colors.black,
                  ),
                  SizedBox(height: 1.5.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create new account",
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 5.h), // Bottom spacing
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
