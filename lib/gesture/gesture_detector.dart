import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyGestureDetector();
  }
}

class _MyGestureDetector extends State<MyGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Item count',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            print("Click");
          },
          child: Container(
            color: Color.fromARGB(255, 238, 216, 149),
            child: Text(
              'Item Click',
              style: TextStyle(fontSize: 30),
            ),
            padding: EdgeInsets.all(8),
          ),
        ),
      ],
    );
  }
}
