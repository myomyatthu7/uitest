import 'package:flutter/material.dart';

class MyStoryList extends StatelessWidget {
  const MyStoryList({super.key, required this.story});
  final String story;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.yellowAccent),
      child: Center(
        child: Text(
          story,
        ),
      ),
    );
  }
}
