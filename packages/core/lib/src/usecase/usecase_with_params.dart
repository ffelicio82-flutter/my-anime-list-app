import 'package:core/core.dart';
import 'package:equatable/equatable.dart';

abstract class UsecaseWithParams<Type, Params> {
  Future<Either<Failure, Type>> call({required Params params});
}

abstract class Params extends Equatable {
  @override
  List<Object> get props => [];
}
