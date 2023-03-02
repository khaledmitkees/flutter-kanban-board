import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kanban_board/firebase_config_helpers/firebase_remote_config_helper.dart';
import 'package:flutter_kanban_board/modules/signup/signup_auth_service/signup_service.dart';
import 'package:flutter_kanban_board/modules/startup_screen/startup_screen.dart';
import 'package:flutter_kanban_board/utils/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app_strings/app_strings.dart';
import 'firebase_config_helpers/firebase_analytics_helper.dart';
import 'modules/signup/signup_screen/signup_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization();

  runApp(const MyApp());
}

Future initialization() async {
  await _initFirebase();
}

Future<void> _initFirebase() async {
  await Firebase.initializeApp();
  await RemoteConfigHelper().fetchAndActivate();
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const localizationsDelegates = [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    const supportedLocales = [
      Locale('en'), // English
      Locale('de'), // German
    ];

    return MultiBlocProvider(
        providers: [
          RepositoryProvider(
            create: (context) => SignUpService(),
            child: SignUpScreen(),
          )
        ],
        child: MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          navigatorObservers: [
            FirebaseAnalyticsHelper.getAnalyticsObserver(),
          ],
          theme: ThemeData(
            primaryColor: ColorConstants.BPrimaryColor,
          ),
          home: StartupScreen(),
          routes: {
            '/sign-up': (context) => SignUpScreen(),
          },
        ));
  }
}
