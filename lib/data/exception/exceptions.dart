abstract class Failure {
  final String message;
  const Failure(this.message);
}

// ServerFailure
class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

// NetworkFailure
class NetworkFailure extends Failure {
  const NetworkFailure(String message) : super(message);
}

// UnauthorizedFailure
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure(String message) : super(message);
}

// Custom exceptions
class CacheFailure extends Failure {
  const CacheFailure(String message) : super(message);
}
