import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  const Failure();

  @override
  List<Object?> get props => [];
}

class AuthenticationFailure extends Failure {
  final String? message;
  final Exception? exception;

  const AuthenticationFailure({this.message, this.exception});

  @override
  List<Object?> get props => [message, exception];
}
