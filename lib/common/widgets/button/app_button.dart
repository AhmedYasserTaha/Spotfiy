import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.title,
    this.child,
    this.height,
    this.style,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final String? title;
  final Widget? child;
  final double? height;
  final TextStyle? style;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: isLoading ? null : onPressed,
      child:
          isLoading
              ? const CircularProgressIndicator(color: Colors.white) // اللودينج
              : child ?? Text(title ?? "", style: style), // النص العادي
    );
  }
}
