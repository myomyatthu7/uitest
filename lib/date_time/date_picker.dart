import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});
  @override
  State<MyDatePicker> createState() {
    return _MyDatePickerState();
  }
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${selectedDate.year}-${selectedDate.month}-${selectedDate.day}'),
        ElevatedButton(
          onPressed: () async {
            final DateTime? choosedDateTime = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
                // initialDatePickerMode: DatePickerMode.year, // first pick year picker(show)
                initialDate: selectedDate);
            if (choosedDateTime != null) {
              setState(() {
                selectedDate = choosedDateTime;
              });
            }
          },
          child: const Text('Choose Dat4e'),
        ),
      ],
    );
  }
}
