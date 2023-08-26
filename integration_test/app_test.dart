import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:personal_site/app/app_widget.dart';
import 'package:personal_site/app/features/home/home_page.dart';
import 'package:personal_site/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App', () {
    testWidgets('Widget', (tester) async {
      await app.main();
      await tester.pump();
      expect(find.byType(AppWidget), findsOneWidget);
    });

    group('HomePage', () {
      testWidgets('Widget', (tester) async {
        await app.main();
        await tester.pump();
        expect(find.byType(HomePage), findsOneWidget);
      });
    });
  });
}
