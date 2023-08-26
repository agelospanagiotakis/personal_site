import 'package:flutter_test/flutter_test.dart';

import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/utils/utils.dart';
import 'package:personal_site/app/widgets/buttons/buttons.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders AppTextButton', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: AppTextButton(
        text: 'See Projects',
        onPressed: () => LaunchUrls().launchURL(AppUrls.gitHub),
      ),
    );

    expect(
      find.byType(AppTextButton),
      findsOneWidget,
    );
  });
}
