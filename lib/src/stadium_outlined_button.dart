import 'package:flutter/material.dart';

import 'base_outlined_button.dart';

/// A [BaseOutlinedButton] which uses [StadiumBorder] as it's shape.
class StadiumOutlinedButton extends StatelessWidget {
  /// The value of [BaseOutlinedButton.label].
  final Widget label;

  /// The value of [BaseOutlinedButton.icon].
  final Widget? icon;

  /// The value of [BaseOutlinedButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [BaseOutlinedButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [BaseOutlinedButton.style].
  final ButtonStyle? style;

  /// The value of [BaseOutlinedButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [BaseOutlinedButton.autofocus].
  final bool autofocus;

  /// The value of [BaseOutlinedButton.clipBehavior].
  final Clip clipBehavior;

  const StadiumOutlinedButton({
    Key? key,
    required this.label,
    this.icon,
    this.onPressed,
    this.onLongPress,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseOutlinedButton(
        icon: icon,
        label: label,
        style: (style ?? OutlinedButtonTheme.of(context).style ?? const ButtonStyle()).copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );
}
