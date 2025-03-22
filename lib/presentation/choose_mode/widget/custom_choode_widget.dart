import 'dart:ui';

import 'package:flutter/material.dart';

class CustomModeWidget extends StatelessWidget {
  const CustomModeWidget({super.key, this.child, this.onTap});
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 80,
            width: 80,

            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
