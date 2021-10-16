import 'package:animated_login_with_rocket/config/app_colors.dart';
import 'package:animated_login_with_rocket/ui_helper/ui_helper.dart';
import 'package:animated_login_with_rocket/widgets/app_big_button.dart';
import 'package:animated_login_with_rocket/widgets/app_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/animated_image.dart';
import 'components/divider_section.dart';
import 'components/title_text.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: getHeight(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.signUpPurpleGradient,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedImage(),
                  verticalSpace(height: 20),
                  TitleText(
                    title: 'Hi there!',
                    size: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  verticalSpace(height: 20),
                  TitleText(
                    title: 'Let\'s Get Started',
                    size: 35,
                    fontWeight: FontWeight.w800,
                  ),
                  verticalSpace(height: 30),
                  AppInput(
                    hintText: 'Username',
                    icon: Icons.account_circle,
                  ),
                  verticalSpace(height: 20),
                  AppInput(
                    hintText: 'Password',
                    icon: FontAwesomeIcons.key,
                    obscureText: true,
                  ),
                  verticalSpace(height: 20),
                  AppBigButton(
                    text: 'Create an Account',
                    color: AppColors.signUpDarkPurple,
                  ),
                  verticalSpace(height: 30),
                  DividerSection(),
                  verticalSpace(height: 30),
                  AppBigButton(
                    text: 'Log In',
                    color: AppColors.signUpLightPurple,
                  ),
                  verticalSpace(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
