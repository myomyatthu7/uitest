import 'package:flutter/material.dart';
import 'package:uitest/list_view/custom_list.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});
  final List<String> _items = [
    // 'post 1',
    // 'post 2',
    // 'post 3',
    // 'post 4',
    // 'post 5',
    // 'post 6',
    // 'post 7',
  ];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 30; i++) {
      _items.add('post ${i + 1}');
    }
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (ctx, index) {
        return CustomList(post: _items[index]);
      },
    );
  }
}
