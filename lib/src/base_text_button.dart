import 'package:flutter/material.dart';

/// A custom [TextButton] which is used throughout this app.
///
/// This way, in case a breaking change occurs in Flutter to [TextButton], we can easily address it in our app.
class BaseTextButton extends StatelessWidget {
  /// The value of [TextButton.child].
  ///
  /// If [icon] is not null then [TextButton.icon] constructor is used and this widget is used as label.
  final Widget label;

  /// The icon widget if this is not null.
  final Widget? icon;

  /// The value of [TextButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [TextButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [TextButton.style].
  final ButtonStyle? style;

  /// The value of [TextButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [TextButton.autofocus].
  final bool autofocus;

  /// The value of [TextButton.clipBehavior].
  final Clip clipBehavior;

  const BaseTextButton({
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
  Widget build(BuildContext context) => (icon != null) ? _buttonWithIcon : _button;

  Widget get _button => TextButton(
        child: label,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );

  Widget get _buttonWithIcon => TextButton.icon(
        icon: icon!,
        label: label,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );
}
