import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurpertino extends StatefulWidget {
  const MyCurpertino({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyCurpertinoState();
  }
}

class _MyCurpertinoState extends State<MyCurpertino> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CupertinoContextMenu(
        //enableHapticFeedback: true,

        actions: <Widget>[
          CupertinoContextMenuAction(
            child: const Text('Action 1'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('Action 2'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        child: Image.asset('assets/images/start_screen.png'),
      ),
    );
  }
}
