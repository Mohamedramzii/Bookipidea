// ignore_for_file: unused_element

import 'package:book_app/constants.dart';
import 'package:book_app/core/api_services.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/featured_books_Cubit/featured_books_cubit.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/newest_books_Cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooksFromServer()),
          BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchNewestBooksFromServer(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: App_Router.router,
          debugShowCheckedModeBanner: false,
          title: 'Bookipidea',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ),
      ),
    );
  }
}
