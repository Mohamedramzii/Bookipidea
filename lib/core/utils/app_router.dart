// ignore_for_file: camel_case_types

import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/search/presentation/view/seachview.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/details_view.dart';
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
    GoRoute(
        path: Routes.detailsview,
        builder: (context, state) => const DetailsView()),
    GoRoute(
        path: Routes.searchview,
        builder: (context, state) => const SearchView()),
  ]);
}

class Routes {
  static const homeview = '/homeview';
  static const detailsview = '/detailsview';
  static const searchview = '/searchview';
}

// class NavigationAnimation extends PageRouteBuilder {
//   final Widget screen;
//   final Curve curve;
//   final Alignment alignment;
//   NavigationAnimation({
//     required this.screen,
//     this.curve = Curves.linearToEaseOut,
//     this.alignment = Alignment.center,
//   }) : super(
//             transitionDuration: const Duration(milliseconds: 800),
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               animation = CurvedAnimation(parent: animation, curve: curve);
//               return ScaleTransition(
//                 alignment: alignment,
//                 scale: animation,
//                 child: child,
//               );
//             },
//             pageBuilder: (context, animation, secondaryAnimation) => screen);
// }
