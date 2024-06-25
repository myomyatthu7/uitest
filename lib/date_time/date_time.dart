import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting

class DateTimeDisplayScreen extends StatefulWidget {
  const DateTimeDisplayScreen({super.key});
  @override
  _DateTimeDisplayScreenState createState() => _DateTimeDisplayScreenState();
}

class _DateTimeDisplayScreenState extends State<DateTimeDisplayScreen> {
  late Timer _timer;
  String _currentDateTime = '';
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    print('initState');
    _updateDateTime();
    _scheduleNextGreetingUpdate();
  }

  @override
  void dispose() {
    print('dispose');
    _timer.cancel();
    super.dispose();
  }

  // Update the date and time every minute
  void _updateDateTime() {
    final DateTime now = DateTime.now();
    setState(() {
      print('_updateDateTime');
      _currentDateTime = _formatDateTime(now);
    });
    // Schedule the next update for the date and time display
    _timer = Timer(
      const Duration(minutes: 1) - Duration(seconds: now.second),
      _updateDateTime,
    );
  }

  // Determine the greeting based on the current hour
  void _updateGreeting() {
    final DateTime now = DateTime.now();
    setState(() {
      print('_updateGreeting');
      _greeting = _getGreeting(now.hour);
    });

    // Schedule the next greeting update
    _scheduleNextGreetingUpdate();
  }

  // Schedule the greeting update to happen at the next time period boundary (12 PM or 5 PM)
  void _scheduleNextGreetingUpdate() {
    print('_scheduleNextGreetingUpdate');
    final DateTime now = DateTime.now();
    DateTime nextUpdate;

    if (now.hour < 12) {
      nextUpdate = DateTime(now.year, now.month, now.day, 12);
    } else if (now.hour < 17) {
      nextUpdate = DateTime(now.year, now.month, now.day, 17);
    } else {
      nextUpdate =
          DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
    }

    final Duration durationUntilNextUpdate = nextUpdate.difference(now);

    _timer = Timer(durationUntilNextUpdate, _updateGreeting);
  }

  String _formatDateTime(DateTime dateTime) {
    print('_formatDateTime');
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(dateTime);
  }

  String _getGreeting(int hour) {
    print('_getGreeting');
    if (hour >= 0 && hour < 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build widget');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Date and Time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _greeting,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold), // Greeting styling
            ),
            const SizedBox(height: 10), // Space between greeting and date/time
            Text(
              _currentDateTime,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
