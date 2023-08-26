import 'dart:developer' as developer;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:personal_site/data/services/firebase/firebase.dart';
import 'package:personal_site/firebase_options.dart';

class FirebaseServiceImpl implements FirebaseService {
  @override
  Future<void> setUpInitialization() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await setUpRemoteConfig();
  }

  @override
  Future<void> setUpRemoteConfig() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    final remoteConfigKeys = FirebaseSetDefaults().getRemoteConfigKeys();
    final remoteConfigSettings = FirebaseSettings().setSettings;
    try {
      await remoteConfig.setDefaults(remoteConfigKeys);
      await remoteConfig.setConfigSettings(remoteConfigSettings);
      await remoteConfig.fetchAndActivate();
    } catch (e, s) {
      developer.log(
        'setUpRemoteConfig',
        name: 'FirebaseServiceImpl',
        error: e,
        stackTrace: s,
      );
    }
  }
}
