import 'dart:ui';

import 'package:financy_app/common/constants/app_color.dart';
import 'package:financy_app/common/constants/app_textStyle.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({super.key, this.onPressed, required this.text});

  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(38));
    
  static final BoxShadow _myBoxShadow = BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 4,
    blurRadius: 10,
    offset: const Offset(0, 3),
  );

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
         boxShadow: [_myBoxShadow],
        gradient: const LinearGradient(
          colors: AppColors.greeGradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTextStyles.litteText.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
