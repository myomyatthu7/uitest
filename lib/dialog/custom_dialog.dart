import 'package:flutter/material.dart';

void showCustomDialog({
  required BuildContext context,
  required String title,
  required String content,
  required String buttonText,
  required Future<void> Function()? onPressed,
}) async {
  showDialog(
    context: context,
    builder: (c) => AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          color: Color(0xff2E292A),
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          color: Color(0xff2E292A),
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              backgroundColor: WidgetStateProperty.all<Color>(
                  Theme.of(context).primaryColor),
            ),
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xffFFFFF1),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
