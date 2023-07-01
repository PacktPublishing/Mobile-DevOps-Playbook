import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

void main() {
  group('Login screen', () {
    final usernameFinder = find.byValueKey('usernameInput');
    final passwordFinder = find.byValueKey('passwordInput');
    final loginButtonFinder = find.byValueKey('loginButton');
    final welcomeFinder = find.byValueKey('welcomeText');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('should show error message for invalid credentials', () async {
      await driver.tap(usernameFinder);
      await driver.enterText('invalid_username');
      await driver.tap(passwordFinder);
      await driver.enterText('invalid_password');
      await driver.tap(loginButtonFinder);
      expect(await driver.getText(find.text('Invalid username or password')),
          isTrue);
    });

    test('should log in with valid credentials', () async {
      await driver.tap(usernameFinder);
      await driver.enterText('valid_username');
      await driver.tap(passwordFinder);
      await driver.enterText('valid_password');
      await driver.tap(loginButtonFinder);
      expect(await driver.getText(welcomeFinder),
          equals('Welcome, valid_username!'));
    });
  });
}
