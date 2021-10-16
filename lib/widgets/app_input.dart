import 'package:animated_login_with_rocket/config/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const AppInput(
      {required this.hintText, required this.icon, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ThemeData()
                  .colorScheme
                  .copyWith(primary: AppColors.signUpDarkPurple)),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(fontWeight: FontWeight.w500),
              prefixIcon: Icon(icon),
            ),
          ),
        ),
      ),
    );
  }
}
