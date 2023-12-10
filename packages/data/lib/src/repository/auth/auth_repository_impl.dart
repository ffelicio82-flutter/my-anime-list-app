import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _authDatasource;

  const AuthRepositoryImpl({required AuthDatasource authDatasource})
      : _authDatasource = authDatasource;

  @override
  Future<Either<Failure, bool>> authenticate({
    required String email,
    required String password,
  }) async {
    try {
      final bool authenticated = await _authDatasource.authenticate(
        email: email,
        password: password,
      );

      return Right(value: authenticated);
    } on Exception catch (e) {
      return Left(
        failure: AuthenticationFailure(message: e.toString(), exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    return Right(value: null);
  }
}
