abstract class AuthRepository {
  Future<bool> authenticate({required String email, required String password});
  Future<void> logout();
}
