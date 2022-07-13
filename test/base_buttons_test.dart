import 'package:flutter/material.dart';
import 'package:flutter_buttons/flutter_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testing base buttons",
    () {
      testWidgets(
        "Testing BaseElevatedButton",
        (tester) async {
          bool pressed = false;

          final button = BaseElevatedButton(
            label: const Text("Base button"),
            onPressed: () => pressed = true,
          );

          await tester.pumpWidget(button);
          final foundButton = find.byType(BaseElevatedButton);
          expect(find.byType(BaseElevatedButton), findsOneWidget);

          await tester.tap(foundButton);
          await tester.pumpAndSettle();
          expect(pressed, true);
        },
      );
    },
  );
}
