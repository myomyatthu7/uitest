import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            //height: 800,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            //height: 800,
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: Container(
            //height: 800,
            // bottomoverflow
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
