import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyTimePickerState();
  }
}

class _MyTimePickerState extends State<MyTimePicker> {
  var selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('${selectedTime.hour}:${selectedTime.minute}'),
        ElevatedButton(
          onPressed: () async {
            final TimeOfDay? choosedTime = await showTimePicker(
              //initialEntryMode: TimePickerEntryMode.dial,
              context: context,
              initialTime: TimeOfDay(
                  hour: selectedTime.hour, minute: selectedTime.minute),
            );
            if (choosedTime != null) {
              setState(() {
                selectedTime = choosedTime;
              });
            }
          },
          child: const Text('Choose Time'),
        )
      ],
    );
  }
}
