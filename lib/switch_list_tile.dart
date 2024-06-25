import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  @override
  State<MySwitchListTile> createState() {
    return _MySwitchListTileState();
  }
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('List 1'),
    );
  }
}
