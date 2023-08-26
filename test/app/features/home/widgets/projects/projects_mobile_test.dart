import 'package:flutter_test/flutter_test.dart';

import 'package:personal_site/app/features/home/widgets/projects/projects_mobile.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should Renders ProjectsMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const ProjectsMobile(),
    );

    expect(
      find.byType(ProjectsMobile),
      findsOneWidget,
    );
  });
}
