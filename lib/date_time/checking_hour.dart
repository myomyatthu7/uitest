import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    _updateGreetingAndDateTime();
    _scheduleNextGreetingUpdate();
  }

  @override
  void dispose() {
    print('dispose');
    _timer.cancel();
    super.dispose();
  }

  void _updateGreetingAndDateTime() {
    final DateTime now = DateTime.now();
    setState(() {
      print('_updateGreetingAndDateTime');
      _currentDateTime = _formatDateTime(now);
      _greeting = _getGreeting(now.hour);
    });

    // Schedule next date/time update to the top of the next hour.
    _timer = Timer(
      const Duration(hours: 1) -
          Duration(
              minutes: now.minute,
              seconds: now.second,
              milliseconds: now.millisecond),
      _updateGreetingAndDateTime,
    );
  }

  // Determine the greeting based on the current hour
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

  // Schedule the next greeting update at the start of the next period (12 PM or 5 PM)
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

    // Update greeting at the start of the next period (12 PM, 5 PM, or midnight)
    _timer = Timer(durationUntilNextUpdate, _updateGreetingAndDateTime);
  }

  String _formatDateTime(DateTime dateTime) {
    print('_formatDateTime');
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting Based on Time of Day'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _greeting,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
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
