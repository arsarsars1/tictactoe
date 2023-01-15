import 'package:flutter/material.dart';

class Utilities {
  Utilities._();

  static Future<void> debugPrintCustom(dynamic exception,
      {String? functionName, String? dartFile}) async {
    debugPrint("debugPrintCustom $exception ${functionName ?? ""}");
  }

  static showDialogCustom(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return Container(
            color: Colors.white.withOpacity(0.3),
            child: const Center(child: CircularProgressIndicator()));
      });
}
