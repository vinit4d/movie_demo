import 'package:either_dart/either.dart';

import '../../data/exception/exceptions.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  Future<Either> call();
}
