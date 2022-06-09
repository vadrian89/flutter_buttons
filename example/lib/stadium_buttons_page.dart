import 'package:flutter/material.dart';
import 'package:flutter_buttons/flutter_buttons.dart';

class StadiumButtonsPage extends StatelessWidget {
  const StadiumButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Builder(
              builder: (context) => StadiumElevatedButton(
                key: const ValueKey("stadium_elevated_button"),
                label: const Text("An elevated button"),
                onPressed: () => _showSnackBar(context, message: "Pressed StadiumElevatedButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => StadiumElevatedButton(
                key: const ValueKey("stadium_elevated_button_icon"),
                label: const Text("An elevated button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed StadiumElevatedButton with icon",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => StadiumOutlinedButton(
                key: const ValueKey("stadium_outlined_button"),
                label: const Text("An outlined button"),
                onPressed: () => _showSnackBar(context, message: "Pressed StadiumOutlinedButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => StadiumOutlinedButton(
                key: const ValueKey("stadium_outlined_button_icon"),
                label: const Text("An outlined button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed StadiumOutlinedButton with icon",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => StadiumTextButton(
                key: const ValueKey("stadium_text_button"),
                label: const Text("A text button"),
                onPressed: () => _showSnackBar(context, message: "Pressed StadiumTextButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => StadiumTextButton(
                key: const ValueKey("stadium_text_button_icon"),
                label: const Text("A text button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed StadiumTextButton with icon",
                ),
              ),
            ),
          ],
        ),
      );

  void _showSnackBar(
    BuildContext context, {
    required String message,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ));
}
