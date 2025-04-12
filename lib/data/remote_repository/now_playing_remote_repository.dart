//
//
// import '../../domain/repository/now_playing_repository.dart';
// import '../dto/now_playing/now_playing_dto.dart';
// import '../keys/remote_keys.dart';
// import '../remote_repository/now_playing_remote_repository.dart';
//
// class NowPlayingRemoteRepo extends INowPlayingRepo {
//   CurrentWeatherRemoteServiceIMP services = CurrentWeatherRemoteServiceIMP();
//
//   @override
//   Future<List<NowPlayingDto>> getNowPlaying() async {
//     try {
//       Map<String, dynamic> mapData = {
//         // "lat": lat,
//         // "lon": long,
//         // "appid": RemoteKeys.weatherKey
//       };
//
//       NowPlayingDto nowPlayingDto = await services.getNowPlaying(mapData);
//
//
//       return nowPlayingDto;
//     } catch (e) {
//       return list;
//     }
//   }
// }
//

import 'dart:developer';

import 'package:either_dart/either.dart';

import '../../domain/entity/now_playing_entity.dart';
import '../../domain/repository/now_playing_repository.dart';
import '../dao/movie_dao.dart';
import '../dto/now_playing/now_playing_dto.dart';
import '../exception/exceptions.dart';
import '../keys/remote_keys.dart';
import '../remote_services/now_playing_remote_service.dart';

class NowPlayingRemoteRepo implements INowPlayingRepo {
  NowPlayingRemoteService remoteDataSource = NowPlayingRemoteService();

  @override
  Future<Either<Failure, NowPlayingEntity>> getNowPlaying({
    required String input,
  }) async {
    try {
      // Define the data for the API request
      Map<String, dynamic> mapData = {
        "api_key": RemoteKeys.movieKey,
        "language": "en-US",
        "page": "1",
      };

      // Fetch the movie details from the remote source
      final NowPlayingDto movieDetails = await remoteDataSource.getNowPlaying(
        mapData: mapData,
        input: input,
      );

      // Delete existing data from the local database
      await MovieDao().deleteDB(input);

      // Store the fetched data in the local database (inserting each movie individually)
      for (var movie in movieDetails.results) {
        // Converting the movie to a Map and inserting it
        await MovieDao().insertDB(movie.toJson(), input);
      }

      // Returning the fetched data wrapped in Right (success)
      return Right(movieDetails);
    } catch (e) {
      // Handling failure and returning the failure wrapped in Left

      return const Left(ServerFailure('Failed to retrieve Data'));
    }
  }
}
