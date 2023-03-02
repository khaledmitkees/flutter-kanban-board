import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kanban_board/modules/signup/signup_auth_service/user_model.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_event.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_state.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_submission_state.dart';
import 'package:flutter_kanban_board/utils/local_storage_helper.dart';
import '../../../app_strings/app_strings.dart';
import '../signup_auth_service/signup_service.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpService service;
  final LocalStorageHelper sharedPrefs = LocalStorageHelper();

  SignUpBloc(this.service) : super(SignUpState()) {
    on<SignInSubmitted>((event, emit) async {
      emit(state.copyWith(state: FormSubmitting()));
      try {
        await service
            .signIn(UserModel(email: state.email, password: state.password));
        sharedPrefs.saveBool(AppStrings.userLoggedIn, true);
        emit(state.copyWith(state: SubmissionSuccess()));
      } catch (e) {
        emit(state.copyWith(state: SubmissionFailed(e as Exception)));
      }
    });
    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<SignUpSubmitted>((event, emit) async {
      emit(state.copyWith(state: FormSubmitting()));
      try {
        await service
            .signUp(UserModel(email: state.email, password: state.password));
        sharedPrefs.saveBool(AppStrings.userLoggedIn, true);
        emit(state.copyWith(state: SubmissionSuccess()));
      } catch (e) {
        emit(state.copyWith(state: SubmissionFailed(e as Exception)));
      }
    });
  }
}
