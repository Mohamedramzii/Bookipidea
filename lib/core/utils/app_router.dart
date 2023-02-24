// ignore_for_file: camel_case_types

import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class App_Router {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.homeview,
      builder: (context, state) => const HomeView(),
    ),
  ]);

  
}

class Routes{

  static const homeview='/homeview';
}
