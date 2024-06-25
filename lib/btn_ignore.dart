import 'package:flutter/material.dart';

class BtnIgnore extends StatefulWidget {
  const BtnIgnore({super.key});
  @override
  State<StatefulWidget> createState() {
    return _BtnIgnoreState();
  }
}

class _BtnIgnoreState extends State<BtnIgnore> {
  bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ignore ? Colors.red : Colors.green),
          onPressed: () {
            setState(() {
              ignore = !ignore;
            });
          },
          child: Text(ignore ? 'Blocked' : 'Allowed'),
        ),
        IgnorePointer(
          ignoring: ignore,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
        ),
      ],
    );
  }
}
