import 'package:flutter/material.dart';
import 'package:flutter_buttons/flutter_buttons.dart';

class BaseButtonsPage extends StatelessWidget {
  const BaseButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Builder(
              builder: (context) => BaseElevatedButton(
                key: const ValueKey("base_elevated_button"),
                label: const Text("An elevated button"),
                onPressed: () => _showSnackBar(context, message: "Pressed BaseElevatedButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => BaseElevatedButton(
                key: const ValueKey("base_elevated_button_icon"),
                label: const Text("An elevated button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed BaseElevatedButton with icon",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => BaseOutlinedButton(
                key: const ValueKey("base_outlined_button"),
                label: const Text("An outlined button"),
                onPressed: () => _showSnackBar(context, message: "Pressed BaseOutlinedButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => BaseOutlinedButton(
                key: const ValueKey("base_outlined_button_icon"),
                label: const Text("An outlined button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed BaseOutlinedButton with icon",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => BaseTextButton(
                key: const ValueKey("base_text_button"),
                label: const Text("A text button"),
                onPressed: () => _showSnackBar(context, message: "Pressed BaseTextButton"),
              ),
            ),
            const SizedBox(height: 10),
            Builder(
              builder: (context) => BaseTextButton(
                key: const ValueKey("base_text_button_icon"),
                label: const Text("A text button with icon "),
                icon: const Icon(Icons.flutter_dash),
                onPressed: () => _showSnackBar(
                  context,
                  message: "Pressed BaseTextButton with icon",
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
