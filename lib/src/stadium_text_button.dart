import 'package:flutter/material.dart';

import 'base_text_button.dart';

/// A [BaseTextButton] which uses [StadiumBorder] as it's shape.
class StadiumTextButton extends StatelessWidget {
  /// The value of [BaseTextButton.child].
  ///
  /// If [icon] is not null then [TextButton.icon] constructor is used and this widget is used as label.
  final Widget label;

  /// The icon widget if this is not null.
  final Widget? icon;

  /// The value of [BaseTextButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [BaseTextButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [BaseTextButton.style].
  final ButtonStyle? style;

  /// The value of [BaseTextButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [BaseTextButton.autofocus].
  final bool autofocus;

  /// The value of [BaseTextButton.clipBehavior].
  final Clip clipBehavior;

  const StadiumTextButton({
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
  Widget build(BuildContext context) => BaseTextButton(
        icon: icon,
        label: label,
        style: (style ?? TextButtonTheme.of(context).style ?? const ButtonStyle()).copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );
}
