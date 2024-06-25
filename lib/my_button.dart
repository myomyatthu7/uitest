import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Counter(),
        ElevatedButton(onPressed: () {}, child: const Text("Click")),
        Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: const Text("Hello World")),
      ],
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Counter();
  }
}

class _Counter extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Counter : $counter",
          style: const TextStyle(fontSize: 30),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Text(
              "Increase +",
              style: TextStyle(fontSize: 20),
            )),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
