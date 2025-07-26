import 'package:go_router/go_router.dart';
import 'package:recipe/features/splash/view/splash.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => const Splash()),
    ],
  );
}
