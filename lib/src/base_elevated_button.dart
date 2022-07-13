import 'package:flutter/material.dart';

/// A custom [ElevatedButton] which is used throughout this app.
///
/// This way, in case a breaking change occurs in Flutter to [ElevatedButton], we can easily address it in our app.
class BaseElevatedButton extends StatelessWidget {
  /// The value of [ElevatedButton.child].
  ///
  /// If [icon] is not null then [ElevatedButton.icon] constructor is used and this widget is used as label.
  final Widget label;

  /// The icon widget if this is not null.
  final Widget? icon;

  /// The value of [ElevatedButton.onPressed].
  final VoidCallback? onPressed;

  /// The value of [ElevatedButton.onLongPress].
  final VoidCallback? onLongPress;

  /// The value of [ElevatedButton.style].
  final ButtonStyle? style;

  /// The value of [ElevatedButton.focusNode].
  final FocusNode? focusNode;

  /// The value of [ElevatedButton.autofocus].
  final bool autofocus;

  /// The value of [ElevatedButton.clipBehavior].
  final Clip clipBehavior;

  const BaseElevatedButton({
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
  Widget build(BuildContext context) => (icon != null) ? _elevatedButtonWithIcon : _elevatedButton;

  Widget get _elevatedButton => ElevatedButton(
        child: label,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        onLongPress: onLongPress,
      );

  Widget get _elevatedButtonWithIcon => ElevatedButton.icon(
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
