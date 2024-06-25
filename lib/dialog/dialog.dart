import 'package:flutter/material.dart';
import 'package:uitest/dialog/custom_dialog.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCustomDialog(
            context: context,
            title: 'Sign-In Required',
            content: 'Please sign-in to access these services.',
            buttonText: 'Ok',
            onPressed: () async {
              Navigator.of(context).pop(); // Close the dialog
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Dialog Click'),
                ),
              );
            });
      },
      child: const Text('Dialog'),
    );
  }
}
