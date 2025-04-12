import 'package:demo_app_lite/presentation/views/home/cubit/now_playing_cubit/now_playing_cubit.dart';
import 'package:demo_app_lite/presentation/views/home/movie_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/remote_repository/now_playing_remote_repository.dart';
import '../domain/usecases/now_playing_use_case.dart';
import '../presentation/views/bar_code_scanner/bar_code_scanner.dart';
import '../presentation/views/home/cubit/popular_cubit/popular_cubit.dart';
import '../presentation/views/home/cubit/top_rated_cubit/top_rated_cubit.dart';
import '../presentation/views/home/cubit/upcoming_cubit/upcoming_cubit.dart';
import '../presentation/views/login/cubit/login_cubit.dart';
import '../presentation/views/login/login_view.dart';
import '../presentation/widgets/custom_bottom_bar.dart';
import 'extensions/page_navigation.dart';

class AppRoute {
  static const String homeRoute = "/HomePage";
  static const String loginRoute = "/LoginPage";
  static const String movieDetail = "/movieDetail";
  static const String scanner = "/scanner";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return PageNavigation.push(
          isLTR: true,
          child: BlocProvider(
            create: (context) => LoginCubit(),
            child: LoginScreen(),
          ),
        );

      case homeRoute:
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        return PageNavigation.push(
          isLTR: true,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<NowPlayingCubit>(
                create:
                    (_) => NowPlayingCubit(
                      NowPlayingUseCase(NowPlayingRemoteRepo()),
                    )..fetchNowPlaying('now_playing'),
              ),
              BlocProvider<PopularCubit>(
                create:
                    (_) =>
                        PopularCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                          ..fetchPopular('popular'),
              ),

              BlocProvider<TopRatedCubit>(
                create:
                    (_) =>
                        TopRatedCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                          ..fetchTopRated('top_rated'),
              ),
              BlocProvider<UpComingCubit>(
                create:
                    (_) =>
                        UpComingCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                          ..fetchUpComing('upcoming'),
              ),
            ],
            child: CustomBottomBar(name: data['name'], email: data['email']),
          ),
        );

      case movieDetail:
        // final MovieDto? args = settings.arguments as MovieDto?;

        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;

        return PageNavigation.push(
          isLTR: false,
          child: MovieDetailScreen(
            moviesDetails: data["movies"],
            listType: data['type'],
          ),
        );

      case scanner:
        return PageNavigation.push(isLTR: false, child: BarcodeScannerScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
