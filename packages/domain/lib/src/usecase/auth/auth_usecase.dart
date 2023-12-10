import 'package:core/core.dart';
import 'package:domain/domain.dart';

class AuthUsecase implements UsecaseWithParams<bool, AuthParams> {
  final AuthRepository _authRepository;

  const AuthUsecase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<Failure, bool>> call({required AuthParams params}) {
    return _authRepository.authenticate(
      email: params.email,
      password: params.password,
    );
  }
}

class AuthParams implements Params {
  final String email;
  final String password;

  const AuthParams({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];

  @override
  bool? get stringify => true;
}
