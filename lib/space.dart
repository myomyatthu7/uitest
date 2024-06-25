import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Space extends StatefulWidget {
  const Space({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SpaceState();
  }
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        ElevatedButton(onPressed: () {}, child: const Text('Work 1')),
        const Gap(3),
        ElevatedButton(onPressed: () {}, child: const Text('Work 2')),
        const Gap(3),
        const MaxGap(10),
        ElevatedButton(onPressed: () {}, child: const Text('Work 3')),
        const Gap(3),
      ],
    );
  }
}
