import 'package:animated_login_with_rocket/ui_helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBigButton extends StatelessWidget {
  final String text;
  final Color color;

  const AppBigButton({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        fixedSize: MaterialStateProperty.all(Size(getWidth(context) * 0.9, 70)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
        elevation: MaterialStateProperty.all(7),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
      onPressed: () {},
    );
  }
}
