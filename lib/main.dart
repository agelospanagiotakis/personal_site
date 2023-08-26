import 'package:flutter/material.dart';
import 'package:personal_site/app/app_widget.dart';
import 'package:personal_site/app/core/injections/injections.dart';
import 'package:personal_site/data/services/firebase/firebase.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseServiceImpl().setUpInitialization();
  setPathUrlStrategy();
  configureDependencies();
  runApp(
    AppWidget(),
  );
}
