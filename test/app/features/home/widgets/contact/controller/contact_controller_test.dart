import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'package:personal_site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:personal_site/data/repositories/contact/contact.dart';

import '../../../../../../utils/utils.dart';

void main() {
  setupFirebaseAuthMocks();

  late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
  late MockHttpClient mockHttpClient;
  late ContactRepositoryImpl contactRepository;
  late ContactController contactController;

  setUp(() {
    mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
    mockHttpClient = MockHttpClient();
    contactRepository = ContactRepositoryImpl(
      firebaseRemoteConfig: mockFirebaseRemoteConfig,
      httpClient: mockHttpClient,
    );
    contactController = ContactController(
      contactRepository: contactRepository,
    );

    when(
      () => mockFirebaseRemoteConfig.getString('service_id'),
    ).thenReturn('service_id');

    when(
      () => mockFirebaseRemoteConfig.getString('template_id'),
    ).thenReturn('template_id');

    when(
      () => mockFirebaseRemoteConfig.getString('user_id'),
    ).thenReturn('user_id');

    when(
      () => mockFirebaseRemoteConfig.getString('to_email'),
    ).thenReturn('to_email');

    when(
      () => mockHttpClient.post(
        any(),
        headers: any(named: 'headers'),
        body: any(named: 'body'),
      ),
    ).thenAnswer(
      (_) async => http.Response('', 200),
    );
  });

  setUpAll(() async {
    if (Firebase.apps.isEmpty) await Firebase.initializeApp();
    registerFallbackValue(UriFake());
  });

  test('ContactController', () {
    expect(
      contactController,
      isInstanceOf<ChangeNotifier>(),
    );

    expect(
      contactController,
      isInstanceOf<ContactController>(),
    );

    expect(
      contactController.sendMail,
      isInstanceOf<Function>(),
    );

    var sendMail = contactController.sendMail(
      contact: AppFixtures().tContact,
    );

    expect(
      () => sendMail,
      isInstanceOf<void>(),
    );
  });
}
