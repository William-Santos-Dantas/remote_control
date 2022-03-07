import 'package:flutter/material.dart';

import 'base_button.dart';
import 'circular_shadow.dart';

class ShadowedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final double? shadowOpacity;

  const ShadowedButton({
    Key? key,
    required this.child,
    required this.onPress,
    this.backgroundColor,
    this.shadowOpacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularShadow(
      shadowOpacity: shadowOpacity,
      child: BaseButton(
        backgroundColor: backgroundColor,
        child: child,
        onPress: onPress,
      ),
    );
  }
}