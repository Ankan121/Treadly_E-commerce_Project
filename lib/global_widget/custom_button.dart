import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class Small_Button extends StatelessWidget {
  const Small_Button({super.key,
    required this.buttonText,
    this.textColor = Colors.white,
    this.buttonColor,
    this.boarderColor,
    this.fontSize,
    this.icon,
    this.textStyle,
    required this.onPressed
     });

  final String buttonText;
  final Color? textColor;
  final Color? buttonColor;
  final Color? boarderColor;
  final Double? fontSize;
  final VoidCallback onPressed;
  final Icon? icon;
  final TextStyle? textStyle;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
          onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // backgroundColor: buttonColor,
          shadowColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )
        ),
          child: icon!=null ? Row(): Text(buttonText,style: textStyle,),
      ),
    );
  }
}
