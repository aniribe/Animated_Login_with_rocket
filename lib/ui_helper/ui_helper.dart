import 'package:flutter/cupertino.dart';

Widget verticalSpace({required double height}) => SizedBox(height: height);

Widget horizontalSpace({required double width}) => SizedBox(width: width);

double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

double getHeight(BuildContext context) => MediaQuery.of(context).size.height;
