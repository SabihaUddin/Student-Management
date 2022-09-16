import 'package:flutter/material.dart';
import 'package:student_management/utils/theme.dart';

const textbig30=TextStyle(
  fontSize: 30,
  color: Color(0xff04194F)
);
const textsmall10=TextStyle(
  fontSize: 15,
  color: Color(0xff04194F)
);


class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const CustomText({
    Key? key,
    required this.text,
    this.color = CustomColors.primaryTextColor,
    this.fontSize = CustomFontSize.smallFont,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
