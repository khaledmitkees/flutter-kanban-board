import 'package:flutter/material.dart';

class TaskText extends StatelessWidget {
  const TaskText({
    super.key,
    required this.title,
    this.textColor = Colors.white,
  });

  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    );
  }
}
