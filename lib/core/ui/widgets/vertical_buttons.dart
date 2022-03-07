import 'package:flutter/material.dart';

import 'circular_shadow.dart';

class VerticalButtons extends StatelessWidget {
  final List<Widget> children;

  const VerticalButtons({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularShadow(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
