import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});
  @override
  State<Button> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<Button> {
  Set<String> _selected = {'Moviess'}; // incorrect text,do nothing.

  @override
  Widget build(BuildContext context) {
    if (_selected.first == 'Work') {
      // show work schedule
      print("Busy");
    }
    return SegmentedButton(
      segments: const <ButtonSegment<String>>[
        ButtonSegment(
          value: "Food",
          icon: Icon(Icons.lunch_dining),
          label: Text('Food'),
        ),
        ButtonSegment(
          value: "Movie",
          icon: Icon(Icons.movie),
          label: Text('Movie'),
          //enabled: false,
        ),
        ButtonSegment(
          value: "Work",
          icon: Icon(Icons.work),
          label: Text('Work'),
        ),
      ],
      selected: _selected,
      multiSelectionEnabled: false,
      selectedIcon: const Icon(Icons.circle),
      onSelectionChanged: onSelectedButton,
      showSelectedIcon: false, // if false,no show selected icon.
    );
  }

  void onSelectedButton(Set<String> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }
}
