import 'package:equatable/equatable.dart';

abstract class SignUpSubmissionState extends Equatable {
  const SignUpSubmissionState();

  @override
  List<Object> get props => [];
}

class InitialFormStatus extends SignUpSubmissionState {
  const InitialFormStatus();
}

class FormSubmitting extends SignUpSubmissionState {}

class SubmissionSuccess extends SignUpSubmissionState {}

class SubmissionFailed extends SignUpSubmissionState {
  final Exception exception;
  SubmissionFailed(this.exception);
}
