import 'dart:async';
import 'package:flutter_kanban_board/app_strings/app_strings.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/local_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/remote_config_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_screen_event.dart';

abstract class StartupBlocInterface {
  void loadData();
}

class StartupBloc implements StartupBlocInterface {
  RemoteConfig remoteConfig;
  LocalStorage localStorage;
  String forceUpdateFlag = AppStrings.forceUpdate;
  StartupBloc(this.remoteConfig, this.localStorage);

  final _stateController = StreamController<StartupState>();

  Stream<StartupState> get stateStream => _stateController.stream;

  void _setStateLoaded(StartupStateEnum state) {
    _stateController.add(StartupLoadedState(state));
  }

  Future<StartupStateEnum> loadData() async {
    try {
      bool isForceUpdate = remoteConfig.getForceUpdate(forceUpdateFlag);
      if (isForceUpdate) {
        _setStateLoaded(StartupStateEnum.FORCE_UPDATE);
        return StartupStateEnum.FORCE_UPDATE;
      }
      bool isLoggedIn = await localStorage.getUserLoginStatus();
      _setLoginState(isLoggedIn);
      return isLoggedIn ? StartupStateEnum.USER_LOGGED_IN : StartupStateEnum.USER_FIRST_TIME;
    } catch (e) {
      _stateController.add(StartupErrorState(e.toString()));
    }
    return StartupStateEnum.ERROR;
  }

  void _setLoginState(bool isLoggedIn) {
    final StartupStateEnum userLoginState = isLoggedIn
        ? StartupStateEnum.USER_LOGGED_IN
        : StartupStateEnum.USER_FIRST_TIME;
    _setStateLoaded(userLoginState);
  }

  void dispose() {
    _stateController.close();
  }
}
