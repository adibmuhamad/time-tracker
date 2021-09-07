import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showAlertDialog(BuildContext context,
    {required String title,
    String? content,
    String? cancelActionText,
    required String defaultActionText}) {
  if (!Platform.isIOS) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content!),
        actions: [
          if (cancelActionText != null)
            FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(cancelActionText),
            ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(defaultActionText),
          )
        ],
      ),
    );
  }
  return showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content!),
      actions: [
        if (cancelActionText != null)
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelActionText),
          ),
        CupertinoDialogAction(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(defaultActionText),
        )
      ],
    ),
  );
}
