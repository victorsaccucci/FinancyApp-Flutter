import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.children,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}