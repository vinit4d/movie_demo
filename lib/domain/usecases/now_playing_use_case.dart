import 'package:either_dart/either.dart';

import '../../config/use_case/use_case.dart';
import '../../data/exception/exceptions.dart';
import '../../data/remote_repository/now_playing_remote_repository.dart';
import '../entity/now_playing_entity.dart';

class NowPlayingUseCase implements UseCase<NowPlayingEntity, CheckParams> {
  final NowPlayingRemoteRepo repository;

  NowPlayingUseCase(this.repository);

  @override
  Future<Either<Failure, NowPlayingEntity>> call(
    CheckParams checkParams,
  ) async {
    return await repository.getNowPlaying(input: checkParams.customerInput);
  }
}

class CheckParams {
  final String customerInput;

  CheckParams({required this.customerInput});
}
