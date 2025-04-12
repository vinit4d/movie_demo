import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_lite/data/dto/now_playing/now_playing_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

import '../../../data/keys/remote_keys.dart';

class CarouselCubit extends Cubit<int> {
  CarouselCubit() : super(0);
  void changePage(int index) => emit(index);
}

class CustomCarousel extends StatelessWidget {
  final List<MovieDto> movies;
  final double? height;

  const CustomCarousel({super.key, required this.movies, this.height});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarouselCubit, int>(
      builder: (context, currentIndex) {
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: movies.length,
              options: CarouselOptions(
                height: height ?? 220,

                viewportFraction: 1.0,
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  context.read<CarouselCubit>().changePage(index);
                },
              ),
              itemBuilder: (context, index, realIdx) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            "${RemoteKeys.baseImageUrlOriginal}${movies[index].backdropPath}",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 500,

                        errorWidget:
                            (context, url, error) =>
                                const Icon(Icons.error, color: Colors.white),
                      ),
                    ),
                    // Dotted indicator inside image
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}
