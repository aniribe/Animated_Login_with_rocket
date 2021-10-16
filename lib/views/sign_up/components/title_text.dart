import 'package:animated_login_with_rocket/config/app_colors.dart';
import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight fontWeight;

  const TitleText(
      {required this.title, required this.size, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: AppColors.white, fontSize: size, fontWeight: fontWeight),
    );
  }
}
