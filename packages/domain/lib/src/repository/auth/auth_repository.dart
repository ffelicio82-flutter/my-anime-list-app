import 'package:core/core.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> authenticate({
    required String email,
    required String password,
  });
  Future<Either<Failure, void>> logout();
}
