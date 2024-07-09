import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uitest/animation/animation.dart';
import 'package:uitest/btn_ignore.dart';
import 'package:uitest/button/button.dart';
import 'package:uitest/check_box/my_check_box_tile.dart';
import 'package:uitest/container.dart';
import 'package:uitest/curpertino_content_menu/my_curpertino.dart';
import 'package:uitest/date_time/checking_hour.dart';
import 'package:uitest/date_time/date_picker.dart';
import 'package:uitest/date_time/date_range.dart';
import 'package:uitest/date_time/date_time.dart';
import 'package:uitest/date_time/time_picker.dart';
import 'package:uitest/date_time/update_date_time.dart';
import 'package:uitest/dialog/dialog.dart';
import 'package:uitest/dialog/show_dialog.dart';
import 'package:uitest/expended.dart';
import 'package:uitest/flow/my_flow.dart';
import 'package:uitest/gesture/gesture_detector.dart';
import 'package:uitest/grid_view.dart';
import 'package:uitest/image_view.dart';
import 'package:uitest/list_view/list_view.dart';
import 'package:uitest/list_view/story_list_view.dart';
import 'package:uitest/material_banner/material_banner.dart';
import 'package:uitest/network_image/network_image.dart';
import 'package:uitest/refresh/refresh.dart';
import 'package:uitest/scrollbar.dart';
import 'package:uitest/snackbar.dart';
import 'package:uitest/space.dart';
import 'package:uitest/tab_page_selector/tab_pagge_selector.dart';
import 'package:uitest/text_box.dart';
import 'my_button.dart';

void main() {
  runApp(MyApp());
  //runApp(const RawScrollbarExampleApp());
  //runApp(const MaterialApp(home: WelcomeScreen(),),);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //double ss = fontSize1;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text("Hello Flutter",style: TextStyle(fontSize: fontSize1),),
          backgroundColor: Colors.cyan,
          actions: const [
            Icon(Icons.menu),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
        ),
        body: Center(
          // child: MyButton(),
          // child: Button(),
          //child: Space(),
          //child: MyAnimation(),
          //child: MyNetworkImage(),
          //child: MyTabPaggeSelector(),
          //child: FlowApp(),
          //child: MyRefresh(),
          // child: MySnackBar(),
          child: MyTextBox(),
          //child: MyContainer(),
          //child: MyExpanded(),
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.grey,
          //       height: 100,
          //       child: StoryListView(),
          //     ),
          //     Expanded(child: MyListView()),
          //   ],
          // ),
          //child: MyImageView(),
          // child: MyGridView(),
          //child: MyGestureDetector(),
          // child: MyMaterialBanner(),
          // child: MyCheckBoxTile(),
          // child: MyCurpertino(),
          // child: MyShowDialog(),
          // child: ShowDataTime(),
          // child : HomeGreeting(),
          // child: DateTimeDisplayScreen(),
          // child: DateTimeDisplayScreen(),
          // child: UpdateDateTime(),
          // child: MyDatePicker(),
          // child: MyTimePicker(),
          // child: MyDateRange(),
          // child: MyDialog(),
          // child: BtnIgnore(),
        ),
      ),
    );
  }
}
