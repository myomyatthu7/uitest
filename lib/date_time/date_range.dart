import 'package:flutter/material.dart';
import 'package:uitest/date_time/date_picker.dart';

class MyDateRange extends StatefulWidget {
  const MyDateRange({super.key});
  @override
  State<MyDateRange> createState() {
    return _MyDateRangeState();
  }
}

class _MyDateRangeState extends State<MyDateRange> {
  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${dateTimeRange.duration.inDays}'),
        ElevatedButton(
          onPressed: () async {
            final DateTimeRange? selectedRange = await showDateRangePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            if (selectedRange != null) {
              setState(() {
                dateTimeRange = selectedRange;
              });
            }
          },
          child: const Text('Choose Dates'),
        ),
      ],
    );
  }
}
