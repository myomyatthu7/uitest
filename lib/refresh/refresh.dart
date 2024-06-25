import 'package:flutter/material.dart';

class MyRefresh extends StatefulWidget {
  const MyRefresh({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyRefreshState();
  }
}

class _MyRefreshState extends State<MyRefresh> {
  @override
  Widget build(BuildContext context) {
    //return MyHomePage();
    return MyHomePage();
  }
}

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key});
//   final List<String> items =
//       List<String>.generate(100, (index) => "Item $index");

//   Future<void> _onRefresh() async {
//     Future.delayed(const Duration(seconds: 2));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//         onRefresh: _onRefresh,
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) => Card(
//             child: ListTile(
//               leading: const Icon(Icons.label),
//               title: Text(items[index]),
//               subtitle: Text('Subtitle for ${items[index]}'),
//             ),
//           ),
//         ));
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = List<String>.generate(20, (index) => "Item $index");

  Future<void> _refresh() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Simulating network delay
    setState(() {
      items += List<String>.generate(20, (index) => "Refreshed Item $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: _refresh,
      strokeWidth: 3,
      edgeOffset: 20, // default 0, where appeare
      displacement: 100, // default 0, where loaging..
      color: Colors.white,
      backgroundColor: Colors.black,
      child: Scrollbar(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.label),
              title: Text(items[index]),
              subtitle: Text('Subtitle for ${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
