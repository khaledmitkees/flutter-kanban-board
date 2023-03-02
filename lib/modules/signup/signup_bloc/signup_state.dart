import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_submission_state.dart';

class SignUpState {
  final String email;
  final String password;
  final SignUpSubmissionState? state;

  bool get isUsernameValid => email.length > 5;
  bool get isPasswordValid => password.length > 5;

  SignUpState(
      {this.email = '',
      this.password = '',
      this.state = const InitialFormStatus()});

  SignUpState copyWith({
    String? username,
    String? password,
    SignUpSubmissionState? state,
  }) {
    return SignUpState(
        email: username ?? this.email,
        password: password ?? this.password,
        state: state ?? this.state);
  }
}
