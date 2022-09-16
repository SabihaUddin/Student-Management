import 'package:flutter/material.dart';
import 'package:student_management/utils/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextStyle? style;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final double borderRadius;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final double borderWidth;
  final Color? fillColor;
  final Color? cursorColor;
  final bool? filled;
  final String? hint;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextInputType? keyBoardType;

  const CustomTextFormField({super.key,
    required this.controller,
    this.style,
    this.onChanged,
    this.prefixIcon,
    this.borderRadius = 10,
    this.borderColor = CustomColors.darkBlue,
    this.focusedBorderColor = CustomColors.darkBlue,
    this.enabledBorderColor = CustomColors.darkBlue,
    this.disabledBorderColor = CustomColors.darkBlue,
    this.borderWidth = .5,
    this.keyBoardType,
    this.fillColor = CustomColors.white,
    this.filled = true,
    this.cursorColor = CustomColors.primaryTextColor,
    this.hint,
    this.labelStyle,
    this.hintStyle,
    this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor,
      style: style,
      onChanged: onChanged,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focusedBorderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enabledBorderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: disabledBorderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        fillColor: fillColor,
        filled: filled,
        hintText: hint,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
      ),
    );
  }
}
