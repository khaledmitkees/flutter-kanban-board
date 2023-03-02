abstract class StartupState {}

enum StartupStateEnum { FORCE_UPDATE, USER_LOGGED_IN, USER_FIRST_TIME, ERROR }

class StartupLoadedState extends StartupState {
  final StartupStateEnum data;

  StartupLoadedState(this.data);
}

class StartupErrorState extends StartupState {
  final String message;

  StartupErrorState(this.message);
}
