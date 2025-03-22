import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.title,
    this.style,
    required this.titleBotton,
    this.styleBotton,
    this.onPressed,
  });
  final String title;
  final TextStyle? style;
  final String titleBotton;
  final TextStyle? styleBotton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: style),
          TextButton(
            onPressed: onPressed,
            child: Text(titleBotton, style: styleBotton),
          ),
        ],
      ),
    );
  }
}
