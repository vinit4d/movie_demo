import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_lite/data/keys/remote_keys.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../data/dto/now_playing/now_playing_dto.dart';
import '../../widgets/shapes.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieDto moviesDetails;
  final String listType;

  const MovieDetailScreen({
    super.key,
    required this.moviesDetails,
    required this.listType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag:
                      '${listType}_moviePoster_${moviesDetails.id}', // Same tag as the one on the home screen
                  child: CachedNetworkImage(
                    imageUrl:
                        "${RemoteKeys.baseImageUrlOriginal}${moviesDetails.posterPath}",
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(color: Colors.grey),
                        ),
                    errorWidget:
                        (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: Shapes.container(
                    padding: EdgeInsets.all(2),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    bgColor: Colors.black,
                    child: BackButton(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${moviesDetails.title} ( ${DateTime.parse(moviesDetails.releaseDate).year} )",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            moviesDetails.popularity.toInt().toString(),
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Popularity",
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                      SizedBox(width: 32),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange),
                              SizedBox(width: 4),
                              Text(
                                moviesDetails.voteAverage.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Original Language: ${moviesDetails.originalLanguage}",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "ReleaseDate: ${moviesDetails.releaseDate}",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Overview",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    moviesDetails.overview,
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
