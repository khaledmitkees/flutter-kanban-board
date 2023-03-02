import 'package:flutter/material.dart';

abstract class Alert {
  Future<void> show(BuildContext context);
}

class OkAlert extends Alert {
  final String title;
  final String message;
  final String okText;
  final VoidCallback? onOk;

  OkAlert({
    required this.title,
    required this.message,
    this.okText = 'OK',
    this.onOk,
  });

  @override
  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (onOk != null) {
                onOk!();
              }
            },
            child: Text(okText),
          ),
        ],
      ),
    );
  }
}

class YesNoAlert extends Alert {
  final String title;
  final String message;
  final String yesText;
  final String noText;
  final VoidCallback onYes;

  YesNoAlert({
    required this.title,
    required this.message,
    this.yesText = 'Yes',
    this.noText = 'No',
    required this.onYes,
  });

  @override
  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(noText),
          ),
          TextButton(
            onPressed: onYes,
            child: Text(yesText),
          ),
        ],
      ),
    );
  }
}
