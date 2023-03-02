import '../../../../firebase_config_helpers/firebase_remote_config_helper.dart';

abstract class RemoteConfig {
  bool getForceUpdate(String forceUpdate);
}

class RemoteConfigStorage implements RemoteConfig {
  late RemoteConfigHelper remoteConfigHelper;

  RemoteConfigStorage() {
    remoteConfigHelper = RemoteConfigHelper();
  }
  @override
  bool getForceUpdate(String flag) {
    final isForceUpdate = RemoteConfigHelper().getBool(flag);
    return isForceUpdate;
  }
}
