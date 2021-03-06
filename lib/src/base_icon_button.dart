import 'package:flutter/material.dart';

/// A custom [IconButton] which is used throughout this app.
///
/// This way, in case a breaking change occurs in Flutter to [IconButton], we can easily address it in our app.
class BaseIconButton extends StatelessWidget {
  /// The value of [IconButton.icon].
  final Widget icon;

  /// The value of [IconButton.onPressed].
  final VoidCallback? onPressed;

  /// See [IconButton.splashRadius].
  final double? splashRadius;

  const BaseIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.splashRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        splashRadius: splashRadius,
        icon: icon,
        onPressed: onPressed,
      );
}
