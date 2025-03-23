import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
    this.style,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final String title;
  final double? height;
  final TextStyle? style;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: isLoading ? null : onPressed, // تعطيل الزر أثناء اللودينج
      child:
          isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(title, style: style),
    );
  }
}
