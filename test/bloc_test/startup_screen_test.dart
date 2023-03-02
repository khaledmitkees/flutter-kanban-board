import 'package:flutter_kanban_board/app_strings/app_strings.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_bloc.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/local_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_repo/remote_config_repo.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_bloc/startup_screen_event.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRemoteConfigRepo implements RemoteConfig {
  @override
  bool getForceUpdate(String forceUpdate) {
    return forceUpdate == AppStrings.forceUpdate;
  }
}

class MockLocalStorageRepo implements LocalStorage {
  @override
  Future<bool> getUserLoginStatus() async {
    return await Future.delayed(const Duration(seconds: 1), () => true);
  }
}

void main() {
  group('My group of tests', () {
    late StartupBloc bloc;
    late MockLocalStorageRepo mockLocalStorageRepo;
    late MockRemoteConfigRepo mockRemoteConfigRepo;

    setUp(() {
      mockLocalStorageRepo = MockLocalStorageRepo();
      mockRemoteConfigRepo = MockRemoteConfigRepo();
      bloc = StartupBloc(mockRemoteConfigRepo, mockLocalStorageRepo);
    });

    test('Test load force update flag', () async {
      expect(await bloc.loadData(), StartupStateEnum.FORCE_UPDATE);
    });

    test('Test ', () async {
      bloc.forceUpdateFlag = "test";
      expect(await bloc.loadData(), StartupStateEnum.USER_LOGGED_IN);
    });
  });
}
