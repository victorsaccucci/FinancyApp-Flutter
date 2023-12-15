import 'dart:math';

import 'package:financy_app/common/constants/app_color.dart';
import 'package:financy_app/common/constants/app_textStyle.dart';
import 'package:financy_app/common/widgets/custom_text_button_widget.dart';
import 'package:financy_app/common/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Image.asset(
                'assets/images/man.png',
              ),
            ),
            Text('Spend Smarter',
                style: AppTextStyles.mediumText.copyWith(
                  color: AppColors.greenDark,
                )),
            Text(
              'Save More',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenDark,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                top: 16,
                bottom: 2
              ),
              child: PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextButton(
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
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}


