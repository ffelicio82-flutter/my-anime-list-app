import 'package:core/core.dart';
import 'package:equatable/equatable.dart';

sealed class Either<L extends Failure, R> extends Equatable {
  bool get isLeft;
  bool get isRight;
  dynamic get value;

  const Either();
}

class Left<L extends Failure, R> extends Either<L, R> {
  final L _failure;

  const Left({required L failure}) : _failure = failure;

  @override
  bool get isLeft => true;

  @override
  bool get isRight => false;

  @override
  Failure get value => _failure;

  @override
  List<Object> get props => [_failure];
}

class Right<L extends Failure, R> extends Either<L, R> {
  final R _value;

  const Right({required R value}) : _value = value;

  @override
  bool get isLeft => false;

  @override
  bool get isRight => true;

  @override
  R get value => _value;

  @override
  List<dynamic> get props => [_value];
}
