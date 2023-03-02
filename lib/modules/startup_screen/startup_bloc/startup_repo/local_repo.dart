import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app_strings/app_strings.dart';

abstract class LocalStorage {
  Future<bool> getUserLoginStatus();
}

class SharedPrefsStorage implements LocalStorage {
  late SharedPreferences _preferences;

  @override
  Future<bool> getUserLoginStatus() async {
    _preferences = await SharedPreferences.getInstance();
    final isLoggedIn = _preferences.getBool(AppStrings.userLoggedIn) ?? false;
    return isLoggedIn;
  }
}
