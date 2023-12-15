import 'package:financy_app/common/constants/app_color.dart';
import 'package:financy_app/common/constants/app_textStyle.dart';
import 'package:financy_app/common/widgets/custom_text_button_widget.dart';
import 'package:financy_app/common/widgets/custom_text_field_widget.dart';
import 'package:financy_app/common/widgets/password_form_field_widget.dart';
import 'package:financy_app/common/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Spend Smarter',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenDark,
            ),
          ),
          Text(
            'Save More',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenDark,
            ),
          ),
          Image.asset(
            'assets/images/list.png',
          ),
          Form(
            child: Column(
              children: [
                CustomTextField(
                  labelText: 'your name',
                  hintText: 'your@email.com',
                ),
                PasswordFormField(
                  labelText: 'choose your password',
                  hintText: '******',
                ),
                  PasswordFormField(
                  labelText: 'confirm your password',
                  hintText: '******',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 16,
              bottom: 2,
            ),
            child: PrimaryButton(
              text: 'Sign Up',
              onPressed: () {},
            ),
          ),
          CustomTextButton(
            onPressed: () {},
            children: [
              Text(
                'Already have account?',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                ),
              ),
              Text(
                ' Log In',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

