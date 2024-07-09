import 'package:flutter/material.dart';

class MyMaterialBanner extends StatefulWidget {
  const MyMaterialBanner({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyMaterialBannerState();
  }
}

class _MyMaterialBannerState extends State<MyMaterialBanner> {
  bool clickDissable = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IgnorePointer(
        ignoring: !clickDissable,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              clickDissable = false;
            });
            clickDissable ? showBanner(context, clickDissable) : (){};
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}

Future<void> showBanner(BuildContext context, bool diable) async {
  bool dis=true;
  diable = dis;
  ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(
      //padding: const EdgeInsets.all(4),
      content: const Text('Subscribe'),
      leading: const Icon(Icons.notifications_active_outlined),
      elevation: 1,
      dividerColor: Colors.amber,
      shadowColor: Colors.cyan,
      surfaceTintColor: Colors.brown,
      backgroundColor: Colors.white,
      forceActionsBelow: true, // button position
      actions: <Widget>[
        TextButton(
            onPressed: () {
              dis = false;
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            child: const Text('Dismiss'))
      ],
    ),
  );
}
// class CustomBanner extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {

//   }
// }
// class _CustomBannerState extends State<CustomBanner> {
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldMessenger.of(context).showMaterialBanner(
//               MaterialBanner(
//                 //padding: const EdgeInsets.all(4),
//                 content: const Text('Subscribe'),
//                 leading: const Icon(Icons.notifications_active_outlined),
//                 elevation: 1,
//                 dividerColor: Colors.amber,
//                 shadowColor: Colors.cyan,
//                 surfaceTintColor: Colors.brown,
//                 backgroundColor: Colors.white,
//                 forceActionsBelow: true, // button position
//                 actions: <Widget>[
//                   TextButton(
//                       onPressed: () {
//                         setState(() {
//                           clickDissable = !clickDissable;
//                         });
//                         ScaffoldMessenger.of(context)
//                             .hideCurrentMaterialBanner();
//                       },
//                       child: const Text('Dismiss'))
//                 ],
//               ),
//             );
//   }
// }