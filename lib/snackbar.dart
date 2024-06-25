import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Create a GlobalKey for the ScaffoldMessenger
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void _showCustomSnackbar() {
    // Use the ScaffoldMessenger to show a custom SnackBar
    _scaffoldMessengerKey.currentState?.showSnackBar(
      const SnackBar(
        content: Row(
          children: [
            Icon(Icons.ac_unit,
                color: Colors.white), // Icon inside the Snackbar
            SizedBox(width: 8), // Space between icon and text
            Expanded(
                child: Text(
                    'I am a custom Snack bar')), // Custom text inside the Snackbar
          ],
        ),
        duration: Duration(seconds: 3), // Duration the Snackbar is visible
        backgroundColor: Colors.blue, // Background color of the Snackbar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Snackbar Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _showCustomSnackbar,
            child: const Text('Show Custom Snackbar'),
          ),
        ),
      ),
    );
  }
}
