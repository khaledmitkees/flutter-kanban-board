import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UsernameChanged extends SignUpEvent {
  final String username;

  UsernameChanged({required this.username});
}

class PasswordChanged extends SignUpEvent {
  final String password;

  PasswordChanged({required this.password});
}

class SignUpSubmitted extends SignUpEvent {}

class SignInSubmitted extends SignUpEvent {}
