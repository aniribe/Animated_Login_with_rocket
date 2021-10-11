import 'package:animated_login_with_rocket/config/app_colors.dart';
import 'package:animated_login_with_rocket/ui_helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/animated_image.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.signUpPurpleGradient,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedImage(),
                    verticalSpace(height: 20),
                    Text(
                      'Hi there!',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 22,
                      ),
                    ),
                    verticalSpace(height: 20),
                    Text(
                      'Let\'s Get Started',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w800),
                    ),
                    verticalSpace(height: 30),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              colorScheme: ThemeData().colorScheme.copyWith(
                                  primary: AppColors.signUpDarkPurple)),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              border: InputBorder.none,
                              hintText: 'Username',
                              hintStyle: TextStyle(fontWeight: FontWeight.w500),
                              prefixIcon: Icon(Icons.account_circle),
                            ),
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(height: 20),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(fontWeight: FontWeight.w500),
                            prefixIcon: Icon(FontAwesomeIcons.key),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
