import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_kanban_board/app_strings/app_strings.dart';

class RemoteConfigHelper {
  static RemoteConfigHelper? _instance;
  static FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  factory RemoteConfigHelper() => _instance ??= RemoteConfigHelper._();

  RemoteConfigHelper._() {
    _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 5),
    ));
    _remoteConfig.setDefaults(<String, dynamic>{AppStrings.forceUpdate: false});
  }

  Future<void> fetchAndActivate() async {
    await _remoteConfig.fetchAndActivate();
  }

  String getString(String key) {
    return _remoteConfig.getString(key);
  }

  int getInt(String key) {
    return _remoteConfig.getInt(key);
  }

  double getDouble(String key) {
    return _remoteConfig.getDouble(key);
  }

  bool getBool(String key) {
    return _remoteConfig.getBool(key);
  }
}
