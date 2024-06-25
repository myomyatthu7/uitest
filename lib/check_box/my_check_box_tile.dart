import 'package:flutter/material.dart';

class MyCheckBoxTile extends StatefulWidget {
  const MyCheckBoxTile({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyCheckBoxTile();
  }
}

class _MyCheckBoxTile extends State<MyCheckBoxTile> {
  bool? _isChecked = false;
  bool? _isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('Checkbox Tile'),
          subtitle: const Text('This is Checkbox Tile'),
          controlAffinity: ListTileControlAffinity.leading, //
          value: _isChecked1,
          activeColor: Colors.blueGrey,
          //selectedTileColor: Colors.blue, //idk
          checkColor: Colors.amber,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked1 = newValue;
            });
          },
        ),
        Row(
          children: [
            const Text("CheckBox  : "),
            Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}
