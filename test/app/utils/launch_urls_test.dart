import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_site/app/core/shared/app_urls.dart';
import 'package:personal_site/app/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('LaunchUrls launch Url', () {
    var url = LaunchUrls().launchURL(AppUrls.gitHub);
    expect(
      () => url,
      isNotNull,
    );
  });
}
