import 'package:either_dart/either.dart';

import '../../data/exception/exceptions.dart';
import '../entity/now_playing_entity.dart';

abstract class INowPlayingRepo {
  Future<Either<Failure, NowPlayingEntity>> getNowPlaying({
    required String input,
  });
}
