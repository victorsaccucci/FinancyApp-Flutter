import 'dart:ui';

import 'package:financy_app/common/constants/app_color.dart';
import 'package:financy_app/common/constants/app_textStyle.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({
    super.key, this.onPressed, required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(38)),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(38)),
          gradient: LinearGradient(
            colors: AppColors.greeGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(38)),
          onTap: onPressed,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(38)),
            ),
            alignment: Alignment.center,
            height: 64,
            child: Text(
              text,
              style: AppTextStyles.litteText.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}