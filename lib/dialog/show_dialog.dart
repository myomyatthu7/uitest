import 'package:flutter/material.dart';

class MyShowDialog extends StatefulWidget {
  const MyShowDialog({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyShowDialogState();
  }
}

class _MyShowDialogState extends State<MyShowDialog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Alert Dialog'),
            content: const Text('This is alert dialog'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
      child: const Text('Dialog'),
    );
  }
}
