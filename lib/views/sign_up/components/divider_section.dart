import 'package:animated_login_with_rocket/config/app_colors.dart';
import 'package:animated_login_with_rocket/ui_helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';

class DividerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: AppColors.white,
              width: 1,
            ))),
          ),
        ),
        horizontalSpace(width: 20),
        Text(
          'Or',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 15,
          ),
        ),
        horizontalSpace(width: 20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: AppColors.white,
              width: 1,
            ))),
          ),
        ),
      ],
    );
  }
}
