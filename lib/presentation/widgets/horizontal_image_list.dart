import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_lite/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:demo_app_lite/data/keys/remote_keys.dart';
import 'package:shimmer/shimmer.dart';
import '../../../data/dto/now_playing/now_playing_dto.dart';

class HorizontalMovieList<T extends MovieDto> extends StatelessWidget {
  final List<T> movies;
  final String listType;

  const HorizontalMovieList({
    Key? key,
    required this.movies,
    required this.listType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: movies.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return GestureDetector(
            onTap: () {
              // moviesDetails: data["movies"],listType: data['type'],
              Navigator.pushNamed(
                context,
                AppRoute.movieDetail,
                arguments: {'movies': movie, "type": listType},
              );
            },
            child: Hero(
              tag: '${listType}_moviePoster_${movie.id}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl:
                      "${RemoteKeys.baseImageUrlOriginal}${movie.posterPath}",
                  fit: BoxFit.cover,
                  width: 120,
                  placeholder:
                      (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(color: Colors.grey),
                      ),
                  errorWidget:
                      (context, url, error) =>
                          const Icon(Icons.error, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
