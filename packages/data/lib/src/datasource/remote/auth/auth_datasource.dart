abstract class AuthDatasource {
  Future<bool> authenticate({
    required String email,
    required String password,
  });
}

class AuthDatasourceImpl implements AuthDatasource {
  @override
  Future<bool> authenticate({
    required String email,
    required String password,
  }) async {
    return true;
  }
}
