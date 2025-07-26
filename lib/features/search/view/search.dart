import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe/core/utils/app_icons.dart';
import 'package:recipe/core/utils/styles.dart' show Styles;
import 'package:recipe/core/widgets/custom_text_field.dart';
import 'package:recipe/features/home/views/widgets/bottom_navigation_bar.dart';
import 'package:sizer/sizer.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

final TextEditingController searchController = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text('Search', style: Styles.textStyle22),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        child: Column(
          children: [
            CustomTextField(
              textFieldPrefix: SvgPicture.asset(AppIcons.iSearch),
              textLabel: "Search",
              textController: searchController,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 1,
        context: context,
      ),
    );
  }
}
