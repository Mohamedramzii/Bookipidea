// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_router.dart';
import 'slidingImageWidget.dart';
import 'slidingTextwidget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController textanimationController;
  late Animation<Offset> textslidingAnimation;
  late AnimationController imageanimationController;
  late Animation<Offset> imageslidingAnimation;

  @override
  void initState() {
    super.initState();
    _slidingImageAnimation();
    _slidingTextAnimation();

    _NavigateToHomeView();
  }

  

  @override
  void dispose() {
    super.dispose();
    textanimationController.dispose();
    imageanimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //these widgets are in lib\features\splash\presentation\views\widgets\splash
        slidingImageWidget(imageslidingAnimation: imageslidingAnimation),
        slidingTextWidget(textslidingAnimation: textslidingAnimation)
      ],
    );
  }

  void _slidingTextAnimation() {
    textanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    textslidingAnimation =
        Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
            .animate(textanimationController);
    textanimationController.forward();
  }

  void _slidingImageAnimation() {
    imageanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    imageslidingAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(imageanimationController);
    imageanimationController.forward();
  }
  
  
  Future<void> _NavigateToHomeView() {
    return Future.delayed(const Duration(milliseconds: 2000), () {
    GoRouter.of(context).push(Routes.homeview);
  });
  
  }

}


