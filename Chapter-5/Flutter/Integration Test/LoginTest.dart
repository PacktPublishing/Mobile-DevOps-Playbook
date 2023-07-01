import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:my_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login screen', () {
    final usernameFinder = find.byValueKey('usernameInput');
    final passwordFinder = find.byValueKey('passwordInput');
    final loginButtonFinder = find.byValueKey('loginButton');
    final welcomeFinder = find.byValueKey('welcomeText');

    testWidgets('should show error message for invalid credentials',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(usernameFinder, 'invalid_username');
      await tester.enterText(passwordFinder, 'invalid_password');
      await tester.tap(loginButtonFinder);
      await tester.pumpAndSettle();
      expect(find.text('Invalid username or password'), findsOneWidget);
    });

    testWidgets('should log in with valid credentials',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();
      await tester.enterText(usernameFinder, 'valid_username');
      await tester.enterText(passwordFinder, 'valid_password');
      await tester.tap(loginButtonFinder);
      await tester.pumpAndSettle();

      expect(find.text('Welcome, valid_username!'), findsOneWidget);
    });
  });
}
