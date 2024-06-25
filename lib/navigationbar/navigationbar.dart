import 'package:flutter/material.dart';
import 'package:uitest/animation/animation.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});
  @override
  State<StatefulWidget> createState() {
   return  _MyNavigationState();  
  }
}
class _MyNavigationState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text('Hello'),
      ),
    );
  }
}