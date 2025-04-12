import 'package:demo_app_lite/config/extensions/image_paths.dart';
import 'package:demo_app_lite/config/extensions/num_extensions.dart';
import 'package:demo_app_lite/presentation/theme/app_colors.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/now_playing_cubit/now_playing_cubit.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/top_rated_cubit/top_rated_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../config/app_route.dart';
import '../../../data/dto/now_playing/now_playing_dto.dart';
import '../../theme/theme_config.dart';
import '../../widgets/custom_carousel/custom_carousel.dart';
import '../../widgets/horizontal_image_list.dart';
import 'cubit/popular_cubit/popular_cubit.dart';
import 'cubit/upcoming_cubit/upcoming_cubit.dart';

//ignore: must_be_immutable
class Home extends StatelessWidget {
  String? name;
  String? email;

  Home({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(2),
          child: SvgPicture.asset("appLogo".toSvg, width: 120, height: 46),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () async {
          Navigator.pushNamed(context, AppRoute.scanner);
        },
        child: Icon(Icons.qr_code_scanner, color: Colors.black),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocProvider(
              create: (context) => CarouselCubit(),

              child: BlocBuilder<UpComingCubit, UpComingState>(
                builder: (context, state) {
                  if (state is UpComingLoaded) {
                    return CustomCarousel(height: 500, movies: state.upComing);
                  }
                  return Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      color: Colors.grey,
                      height: 500,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 28),
              child: Text(
                "${ThemeConfig.strings.nowPlaying} ",
                style: ThemeConfig.styles.style22.copyWith(
                  color: AppColors().whiteColor,
                ),
              ),
            ),
            10.heightBox,

            BlocBuilder<NowPlayingCubit, NowPlayingState>(
              builder: (context, state) {
                if (state is NowPlayingLoaded) {
                  return HorizontalMovieList<MovieDto>(
                    movies: state.nowPlaying,
                    listType: "now_playing",
                  );
                  ;
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(color: Colors.grey, height: 200, width: 120),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 28),
              child: Text(
                "${ThemeConfig.strings.popular} ",
                style: ThemeConfig.styles.style22.copyWith(
                  color: AppColors().whiteColor,
                ),
              ),
            ),
            10.heightBox,
            BlocBuilder<PopularCubit, PopularState>(
              builder: (context, state) {
                // if(state is PopularInitialState){
                //   context.read<PopularCubit>().fetchPopular("popular");
                // }
                if (state is PopularLoaded) {
                  return HorizontalMovieList<MovieDto>(
                    movies: state.popular,
                    listType: "popular",
                  );
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(color: Colors.grey, height: 200, width: 120),
                );
              },
            ),
            // HorizontalImageList(
            //   images: ["13".toPng, "12".toPng, "8".toPng, "4".toPng, "5".toPng],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 28),
              child: Text(
                "${ThemeConfig.strings.topRated} ",
                style: ThemeConfig.styles.style22.copyWith(
                  color: AppColors().whiteColor,
                ),
              ),
            ),
            10.heightBox,

            BlocBuilder<TopRatedCubit, TopRatedState>(
              builder: (context, state) {
                if (state is TopRatedLoaded) {
                  return HorizontalMovieList<MovieDto>(
                    movies: state.topRated,
                    listType: "top_rated",
                  );
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(color: Colors.grey, height: 200, width: 120),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 28),
              child: Text(
                "${ThemeConfig.strings.upcoming} ",
                style: ThemeConfig.styles.style22.copyWith(
                  color: AppColors().whiteColor,
                ),
              ),
            ),
            10.heightBox,

            BlocBuilder<UpComingCubit, UpComingState>(
              builder: (context, state) {
                if (state is UpComingLoaded) {
                  return HorizontalMovieList<MovieDto>(
                    movies: state.upComing,
                    listType: "upcoming",
                  );
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(color: Colors.grey, height: 200, width: 120),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
