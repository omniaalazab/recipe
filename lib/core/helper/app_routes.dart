import 'package:go_router/go_router.dart';
import 'package:recipe/features/home/views/home.dart';
import 'package:recipe/features/notification/view/notification.dart';
import 'package:recipe/features/profile/view/profile.dart';
import 'package:recipe/features/search/view/search.dart';
import 'package:recipe/features/splash/view/splash.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
    static const String kHomeView = '/home';
      static const String kNotificationView = '/notification';
        static const String kSearchView = '/search';
          static const String kProfileView = '/profile';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => const Splash()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kSearchView, builder: (context, state) => const Search()),
      GoRoute(path: kNotificationView, builder: (context, state) => const Notification()),
      GoRoute(path: kProfileView, builder: (context, state) => const Profile()),
    ],
  );
}
