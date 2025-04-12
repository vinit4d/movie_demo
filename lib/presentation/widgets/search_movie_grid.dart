import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_lite/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:demo_app_lite/data/keys/remote_keys.dart';
import 'package:shimmer/shimmer.dart';
import '../../../data/dto/now_playing/now_playing_dto.dart';

class SearchMovieGrid<T extends MovieDto> extends StatelessWidget {
  final List<T> movies;
  final String listType;

  const SearchMovieGrid({
    super.key,
    required this.movies,
    required this.listType,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: movies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust the number of columns
        crossAxisSpacing: 8, // Horizontal space between grid items
        mainAxisSpacing: 8, // Vertical space between grid items
        childAspectRatio: 0.7, // Adjust this ratio to change the item's aspect
      ),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoute.movieDetail,
              arguments: {'movies': movie, 'type': listType},
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
    );
  }
}
