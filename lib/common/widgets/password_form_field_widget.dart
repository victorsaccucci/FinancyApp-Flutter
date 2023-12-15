import 'package:financy_app/common/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;

  const PasswordFormField({
    super.key,
    this.controller,
    this.padding,
    this.hintText,
    this.labelText,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormField();
}
class _PasswordFormField extends State<PasswordFormField> {

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obscureText: isHidden,
      controller: widget.controller,
      padding: widget.padding,
      hintText: widget.hintText,
      labelText: widget.labelText,
      suffixIcon: InkWell(
        child: Icon(
          Icons.visibility,          
        ),
        borderRadius: BorderRadius.circular(32),
        onTap: (){},
      ),
    );
  }
}
