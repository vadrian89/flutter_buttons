import 'package:flutter/material.dart';

/// A custom [OutlinedButton] which is used throughout this app.
///
/// This way, in case a breaking change occurs in Flutter to [OutlinedButton], we can easily address it in our app.
class BaseOutlinedButton extends StatelessWidget {
  /// The value of [OutlinedButton.child].
  ///
  /// If [icon] is not null then [OutlinedButton.icon] constructor is used and this widget is used as label.
  final Widget label;

  /// The icon widget if this is not null.
  final Widget? icon;

  /// The value of [OutlinedButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [OutlinedButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [OutlinedButton.style].
  final ButtonStyle? style;

  /// The value of [OutlinedButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [OutlinedButton.autofocus].
  final bool autofocus;

  /// The value of [OutlinedButton.clipBehavior].
  final Clip clipBehavior;

  const BaseOutlinedButton({
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

  Widget get _button => OutlinedButton(
        child: label,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );

  Widget get _buttonWithIcon => OutlinedButton.icon(
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
