import 'package:example/base_buttons_page.dart';
import 'package:example/stadium_buttons_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:example/main.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  group("Testing app", () {
    const testApp = MyApp();

    testWidgets(
      "Flutter buttons",
      (tester) async {
        await tester.pumpWidget(testApp);
        await tester.pumpAndSettle();

        /// Check if the BaseButtonsPage exists.
        expect(find.byType(BaseButtonsPage), findsOneWidget);

        /// Run the tests on BaseButtonsPage
        await binding.traceAction(() => testBaseButtons(tester), reportKey: "build_timeline");
        await tester.pumpAndSettle();

        /// Navigate to StadiumButtonsPage
        await tester.tap(find.byKey(const ValueKey("bottom_navigation_item_1")));
        await tester.pumpAndSettle(const Duration(seconds: 1));

        /// Check if the StadiumButtonsPage exists.
        expect(find.byType(StadiumButtonsPage), findsOneWidget);

        /// Run the tests on StadiumButtonsPage
        await binding.traceAction(() => testStadiumButtons(tester), reportKey: "build_timeline");
      },
    );
  });
}

Future<dynamic> testBaseButtons(WidgetTester tester) async {
  /// Test the [BaseElevatedButton] widget.
  await tester.tap(find.byKey(const ValueKey("base_elevated_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseElevatedButton"), findsOneWidget);

  /// Test the [BaseElevatedButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("base_elevated_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseElevatedButton with icon"), findsOneWidget);

  /// Test the [BaseOutlinedButton] widget.
  await tester.tap(find.byKey(const ValueKey("base_outlined_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseOutlinedButton"), findsOneWidget);

  /// Test the [BaseOutlinedButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("base_outlined_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseOutlinedButton with icon"), findsOneWidget);

  /// Test the [BaseTextButton] widget.
  await tester.tap(find.byKey(const ValueKey("base_text_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseTextButton"), findsOneWidget);

  /// Test the [BaseTextButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("base_text_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed BaseTextButton with icon"), findsOneWidget);
}

Future<dynamic> testStadiumButtons(WidgetTester tester) async {
  /// Test the [StadiumElevatedButton] widget.
  await tester.tap(find.byKey(const ValueKey("stadium_elevated_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumElevatedButton"), findsOneWidget);

  /// Test the [StadiumElevatedButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("stadium_elevated_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumElevatedButton with icon"), findsOneWidget);

  /// Test the [StadiumOutlinedButton] widget.
  await tester.tap(find.byKey(const ValueKey("stadium_outlined_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumOutlinedButton"), findsOneWidget);

  /// Test the [StadiumOutlinedButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("stadium_outlined_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumOutlinedButton with icon"), findsOneWidget);

  /// Test the [StadiumTextButton] widget.
  await tester.tap(find.byKey(const ValueKey("stadium_text_button")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumTextButton"), findsOneWidget);

  /// Test the [StadiumTextButton] widget with the icon property set.
  await tester.tap(find.byKey(const ValueKey("stadium_text_button_icon")));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(find.text("Pressed StadiumTextButton with icon"), findsOneWidget);
}
