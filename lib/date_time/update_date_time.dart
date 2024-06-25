import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateDateTime extends StatefulWidget {
  const UpdateDateTime({super.key});
  @override
  _DateTimeDisplayScreenState createState() => _DateTimeDisplayScreenState();
}

class _DateTimeDisplayScreenState extends State<UpdateDateTime> {
  late Timer _timer;
  String _currentDateTime = '';
  String _greeting = '';
  DateTime? _nextUpdateTime; // Variable to store the next update time.

  @override
  void initState() {
    super.initState();
    print('initState');
    _updateGreetingAndDateTime();
  }

  @override
  void dispose() {
    _timer.cancel();
    print('dispose');
    super.dispose();
  }

  void _updateGreetingAndDateTime() {
    print('_updateGreetingAndDateTime');
    final DateTime now = DateTime.now();
    setState(() {
      _currentDateTime = _formatDateTime(now);
      _greeting = _getGreeting(now.hour);
    });

    _scheduleNextGreetingUpdate(); // Schedule the next greeting update.
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

  void _scheduleNextGreetingUpdate() {
    print('_scheduleNextGreetingUpdate');
    final DateTime now = DateTime.now();
    DateTime nextUpdate;

    // Determine the next significant time based on the current hour.
    if (now.hour < 12) {
      nextUpdate =
          DateTime(now.year, now.month, now.day, 12); // Update at 12 PM.
    } else if (now.hour < 17) {
      nextUpdate =
          DateTime(now.year, now.month, now.day, 17); // Update at 5 PM.
    } else {
      // Update at midnight the next day.
      nextUpdate = DateTime(now.year, now.month, now.day + 1);
    }

    _nextUpdateTime = nextUpdate; // Store the next update time.
    final Duration durationUntilNextUpdate = nextUpdate.difference(now);

    // Schedule the update at the next significant time.
    _timer = Timer(durationUntilNextUpdate, _updateGreetingAndDateTime);
  }

  String _formatDateTime(DateTime dateTime) {
    print('_formatDateTime');
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(dateTime);
  }

  Duration _getRemainingTime() {
    print('_getRemainingTime');
    if (_nextUpdateTime == null) return Duration.zero;
    final DateTime now = DateTime.now();
    return _nextUpdateTime!.difference(now);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting Based on Time of Day'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _greeting,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              _currentDateTime,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Time until next update: ${_getRemainingTime().inMinutes} minutes', // Display the remaining time.
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
