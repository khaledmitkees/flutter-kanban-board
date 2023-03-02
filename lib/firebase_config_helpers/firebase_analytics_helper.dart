import 'package:firebase_analytics/firebase_analytics.dart';

/// FirebaseAnalytics class provided by the Firebase Analytics package to log events and screen views.
/// The getAnalyticsObserver function returns a FirebaseAnalyticsObserver
/// object that can be used to automatically log screen views using the Navigator widget

class FirebaseAnalyticsHelper {
  static FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  static Future<void> logEvent(
      String name, Map<String, dynamic> parameters) async {
    await _analytics.logEvent(name: name, parameters: parameters);
  }

  static void logScreen(String screenName, String screenClassOverride) {
    _analytics.setCurrentScreen(
        screenName: screenName, screenClassOverride: screenClassOverride);
  }

  static FirebaseAnalyticsObserver getAnalyticsObserver() {
    return FirebaseAnalyticsObserver(analytics: _analytics);
  }
}
