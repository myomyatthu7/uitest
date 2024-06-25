import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key, required this.post});
  final String post;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Container(
        height: 200,
        color: Colors.green,
        child: Center(
          child: Text(
            "Facebook : $post",
            style: const TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
