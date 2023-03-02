import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/mock_model.dart';
import 'package:flutter_kanban_board/modules/kanban_board/repos/kanban_repos.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_bloc.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/local_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/remote_config_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_screen_event.dart';
import 'package:flutter_kanban_board/utils/alerts.dart';
import 'package:flutter_kanban_board/utils/assets_helper.dart';
import '../kanban_board/bloc/kanban_board_bloc.dart';
import '../kanban_board/bloc/kanban_board_event.dart';
import '../kanban_board/presentation/kanban_board_screen.dart';
import '../signup/signup_screen/signup_screen.dart';

class StartupScreen extends StatelessWidget {
  late final StartupBloc _bloc;
  late final AppLocalizations locale;

  StartupScreen() {
    _bloc = StartupBloc(RemoteConfigStorage(), SharedPrefsStorage());
    _bloc.loadData();
  }

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;
    var splashImage = ImageHelper.getLocalImagePath('splash.png');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: StreamBuilder<StartupState>(
          stream: _bloc.stateStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final state = snapshot.data!;
              if (state is StartupLoadedState) {
                if (state.data == StartupStateEnum.FORCE_UPDATE) {
                  showAlert(context);
                }
                if (state.data == StartupStateEnum.USER_FIRST_TIME) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  });
                }
                if (state.data == StartupStateEnum.USER_LOGGED_IN) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return BlocProvider(
                            create: (_) {
                              final bloc =
                                  KanbanBloc(MockBoardsData(), KanbanRepo());
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
                return showContent(splashImage, state);
              }
            }
            return showContent(splashImage, StartupErrorState(""));
          },
        ),
      ),
    );
  }

  void showAlert(BuildContext context) {
    OkAlert(
        title: locale.update,
        message: locale.app_needs_update,
        onOk: () => {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              })
            }).show(context);
  }

  Column showContent(String splashImage, StartupState state) {
    Widget stateWidget = state is StartupErrorState
        ? Text(state.message)
        : CircularProgressIndicator();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          splashImage,
          width: 260,
          height: 260,
        ),
        SizedBox(height: 16),
        stateWidget,
      ],
    );
  }
}
