import 'package:financy_app/common/constants/app_color.dart';
import 'package:financy_app/common/constants/app_textStyle.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? obscureText;

  const CustomTextField({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.controller,
    this.suffixIcon,
    this.obscureText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.greeLight,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        obscureText: widget.obscureText ?? false,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText?.toUpperCase(),
          labelStyle:
              AppTextStyles.inputLabelText.copyWith(color: AppColors.grey),
          focusedBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(
            color: Colors.red,
          )),
          errorBorder: defaultBorder,
          focusedErrorBorder: defaultBorder,
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}
