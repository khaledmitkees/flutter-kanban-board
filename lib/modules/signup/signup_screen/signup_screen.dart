import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kanban_board/Widgets/buttons/custom_button.dart';
import 'package:flutter_kanban_board/Widgets/textfields/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_kanban_board/modules/signup/signup_auth_service/signup_service.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_bloc.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_event.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_state.dart';
import 'package:flutter_kanban_board/modules/signup/signup_bloc/signup_submission_state.dart';
import 'package:flutter_kanban_board/utils/alerts.dart';
import '../../../utils/assets_helper.dart';
import '../../kanban_board/bloc/kanban_board_bloc.dart';
import '../../kanban_board/bloc/kanban_board_event.dart';
import '../../kanban_board/models/mock_model.dart';
import '../../kanban_board/presentation/kanban_board_screen.dart';
import '../../kanban_board/repos/kanban_repos.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  late final AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;
    return Builder(builder: (context) {
      return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: BlocProvider(
                create: (context) => SignUpBloc(context.read<SignUpService>()),
                child: _signUpForm()),
          ));
    });
  }

  Widget _signUpForm() {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        final formState = state.state;
        if (formState is SubmissionSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return BlocProvider(
                    create: (_) {
                      final bloc = KanbanBloc(MockBoardsData(), KanbanRepo());
                      bloc.add(const KanbanEvent.getBoards());
                      return bloc;
                    },
                    child: const KanbanBlocPage(),
                  );
                },
              ),
            );
          });
        }
        if (formState is SubmissionFailed) {
          OkAlert(title: "Error", message: formState.exception.toString())
              .show(context);
        }
      },
      child: Form(
          key: _formKey,
          child: Center(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                _image(),
                _emailField(),
                SizedBox(height: 5),
                _passwordField(),
                SizedBox(height: 25),
                _signUpButton(),
                SizedBox(height: 10),
                _signInButton()
              ])))),
    );
  }

  Widget _image() {
    return Image.asset(
      ImageHelper.getLocalImagePath('splash.png'),
      width: 260,
      height: 260,
    );
  }

  Widget _emailField() {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        child: CustomTextField(
          width: 350,
          height: 50,
          onChanged: (value) =>
              context.read<SignUpBloc>().add(UsernameChanged(username: value)),
          hintText: locale.email,
          validator: (value) =>
              state.isUsernameValid ? null : locale.sign_up_username_error,
        ),
      );
    });
  }

  Widget _passwordField() {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        child: CustomTextField(
          width: 350,
          height: 50,
          onChanged: (value) =>
              context.read<SignUpBloc>().add(PasswordChanged(password: value)),
          hintText: locale.password,
          obscureText: true,
          validator: (value) =>
              state.isPasswordValid ? null : locale.sign_up_password_error,
        ),
      );
    });
  }

  Widget _signUpButton() {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomRoundedButton(
        onPressed: () {
          if (_formKey.currentState?.validate() ?? false) {
            context.read<SignUpBloc>().add(SignUpSubmitted());
          }
        },
        text: locale.sign_up,
        color: Colors.white,
        textColor: Colors.black,
        borderColor: Colors.black12,
      );
    });
  }

  Widget _signInButton() {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomRoundedButton(
        onPressed: () {
          if (_formKey.currentState?.validate() ?? false) {
            context.read<SignUpBloc>().add(SignInSubmitted());
          }
        },
        text: locale.sign_in,
      );
    });
  }
}
