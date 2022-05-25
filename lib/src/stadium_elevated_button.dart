import 'package:flutter/material.dart';

import 'base_elevated_button.dart';

/// A [BaseElevatedButton] which uses [StadiumBorder] as it's shape.
class StadiumElevatedButton extends StatelessWidget {
  /// The value of [BaseElevatedButton.child].
  ///
  /// If [icon] is not null then [BaseElevatedButton.icon] constructor is used and this widget is used as label.
  final Widget label;

  /// The icon widget if this is not null.
  final Widget? icon;

  /// The value of [BaseElevatedButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [BaseElevatedButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [BaseElevatedButton.style].
  final ButtonStyle? style;

  /// The value of [BaseElevatedButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [BaseElevatedButton.autofocus].
  final bool autofocus;

  /// The value of [BaseElevatedButton.clipBehavior].
  final Clip clipBehavior;

  const StadiumElevatedButton({
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
  Widget build(BuildContext context) => BaseElevatedButton(
        icon: icon,
        label: label,
        style: (style ?? ElevatedButtonTheme.of(context).style ?? const ButtonStyle()).copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );
}
