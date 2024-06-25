import 'package:flutter/material.dart';
import 'package:uitest/list_view/story_list.dart';

class StoryListView extends StatelessWidget {
  StoryListView({super.key});
  List<String> _story = [];
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 50; i++) {
      _story.add('Story $i');
    }
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _story.length,
        itemBuilder: (ctx, index) {
          return MyStoryList(story: _story[index]);
        });
  }
}
