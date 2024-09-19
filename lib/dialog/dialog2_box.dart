import 'package:flutter/material.dart';

class Dialog2Box extends StatelessWidget {
  const Dialog2Box({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Dialog Title"),
          content: Text("This is the subtitle or content of the dialog."),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text("OK"),
              onPressed: () {
                // Perform your action here
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog1(BuildContext context) {
    showAdaptiveDialog(context: context, builder: (BuildContext color){
      return AlertDialog(title: Text('Dialog Title'),content: Text('This is the subtitle or content of the dialog.'),actions: [
        TextButton(onPressed: (){}, child: Text('Cancel')),
        TextButton(onPressed: (){}, child: Text('OK'))
      ],);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () => _showDialog(context),
          onPressed: () => _showDialog1(context),
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}