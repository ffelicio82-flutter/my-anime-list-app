import 'package:core/core.dart';

abstract class UsecaseNoParams<Type> {
  Future<Either<Failure, Type>> call();
}
