import 'package:book_app/core/api_services.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/search/data/search_repos/search_repoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(getIt.get<ApiServices>()));
}
