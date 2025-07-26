import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe/core/helper/app_routes.dart';
import 'package:recipe/core/utils/app_icons.dart';
import 'package:recipe/core/utils/color_helper.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final BuildContext context;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.context,
  });

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(AppRouter.kHomeView);
        break;
      case 1:
        GoRouter.of(context).go(AppRouter.kSearchView);
        break;
      case 2:
        GoRouter.of(context).push(AppRouter.kHomeView);
        break;
      case 3:
        GoRouter.of(context).push(AppRouter.kNotificationView);
        break;
      case 4:
        GoRouter.of(context).push(AppRouter.kProfileView);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.iHome,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? ColorsHelper.lightBlue : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.iSearch,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? ColorsHelper.lightBlue : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.orange, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withAlpha(10),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              AppIcons.iChef,
              width: 28,
              height: 28,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.iNotification,
            width: 24,
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? ColorsHelper.lightBlue : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.iProfile,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              currentIndex == 4 ? ColorsHelper.lightBlue : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
