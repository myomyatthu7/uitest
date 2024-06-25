import 'package:flutter/material.dart';

class MyImageView extends StatelessWidget {
  const MyImageView({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Image.asset(
          'assets/images/three.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
