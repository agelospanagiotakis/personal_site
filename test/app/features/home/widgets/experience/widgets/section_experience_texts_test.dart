import 'package:flutter_test/flutter_test.dart';

import 'package:personal_site/app/features/home/widgets/experience/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders SectionExperienceTexts', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const SectionExperienceTexts(),
    );

    expect(
      find.byType(SectionExperienceTexts),
      findsOneWidget,
    );
  });
}
