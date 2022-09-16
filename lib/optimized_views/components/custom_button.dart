import 'package:flutter/material.dart';
import 'package:student_management/utils/text.dart';
import 'package:student_management/utils/theme.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final double elevation;
  final double borderRadius;
  final Color borderColor;
  final String text;
  final Color backgroundColor;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.elevation = 5,
      this.borderRadius = 10,
      this.borderColor = CustomColors.darkBlue,
      this.backgroundColor = CustomColors.darkBlue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: elevation,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: BorderSide(color: borderColor))),
        child: CustomText(
          text: text,
          color: CustomColors.secondaryTextColor,
          fontWeight: FontWeight.w500,
        ));
  }
}
