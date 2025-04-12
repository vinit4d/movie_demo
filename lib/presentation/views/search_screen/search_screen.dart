import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_app_lite/presentation/widgets/horizontal_image_list.dart';

import '../../../data/dto/now_playing/now_playing_dto.dart';
import '../../widgets/search_movie_grid.dart';
import 'cubit/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search for a movie...',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  _searchController.clear();
                  context.read<SearchCubit>().searchMovies(
                    '',
                  ); // Clear search results when cleared
                },
              ),
              border: OutlineInputBorder(),
              filled: true, // This makes the background color active
              fillColor: Colors.black.withOpacity(
                0.1,
              ), // Light black background
              labelStyle: TextStyle(color: Colors.white), // White label color
            ),
            style: TextStyle(color: Colors.white), // White text color
            onChanged: (query) {
              context.read<SearchCubit>().searchMovies(query);
            },
          ),
        ),
        Expanded(
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchInitial) {
                return Center(
                  child: Text(
                    "Start searching for a movie...",
                    style: TextStyle(color: Colors.white70),
                  ),
                );
              } else if (state is SearchLoaded) {
                if (state.movies.isEmpty) {
                  return Center(
                    child: Text(
                      "No movies found.",
                      style: TextStyle(color: Colors.white70),
                    ),
                  );
                }
                return SearchMovieGrid<MovieDto>(
                  movies: state.movies,
                  listType: 'search',
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
