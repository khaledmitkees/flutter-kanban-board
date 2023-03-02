import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomRoundedButton extends MaterialButton {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color color;
  final double borderRadius;
  final Color borderColor;

  CustomRoundedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.textColor = Colors.white,
      this.color = ColorConstants.BPrimaryColor,
      this.borderRadius = 25.0,
      this.borderColor = Colors.transparent})
      : super(
            key: key,
            onPressed: onPressed,
            height: 60,
            minWidth: 250,
            child: new Text(
              text,
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
            textColor: textColor,
            color: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ));
}
