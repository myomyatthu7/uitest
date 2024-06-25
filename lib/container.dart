import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(8.0, 8.0), // ဖောင်းကြွ
              blurRadius: 12.0,
              spreadRadius: 1.0),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-8.0, -8.0),
              blurRadius: 12.0,
              spreadRadius: 1.0),
        ],
      ),
    );
  }
}
