import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_translator/Core/Colors/app_colors.dart';

class Utils {
  static void copyToClipboard(BuildContext context,
      {String? label, required String text}) {
    final data = ClipboardData(text: text);
    Clipboard.setData(data);
    showSnackBar(
      context,
      title: label ?? "Copied to Clipboard",
    );
  }

  static void showSnackBar(
    BuildContext context, {
    required String title,
    String? actionLabel,
    VoidCallback? onActionPressed,
    Color? color,
    Color? backgroundColor,
  }) {
    closeOpenedSnackBars(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: color??AppColors.get.oppositeLabel,
              ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: actionLabel ?? "Close",
          onPressed: onActionPressed ??
              () {
                closeOpenedSnackBars(context);
              },
        ),
      ),
    );
  }

  static void closeOpenedSnackBars(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  static showInfoDialog(BuildContext context, {required Widget child}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: child,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Close"))
          ],
        );
      },
      barrierDismissible: true,

    );
  }
}

void printDM(String message) {
  if (kDebugMode) {
    log(message);
  }
}
