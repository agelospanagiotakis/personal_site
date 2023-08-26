import 'package:flutter_test/flutter_test.dart';

import 'package:personal_site/app/widgets/drawer/drawer.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders Footer', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const Footer(),
    );

    expect(
      find.byType(Footer),
      findsOneWidget,
    );
  });
}
