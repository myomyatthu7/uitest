import 'package:flutter/material.dart';

class MyMaterialBanner extends StatefulWidget {
  const MyMaterialBanner({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyMaterialBannerState();
  }
}

class _MyMaterialBannerState extends State<MyMaterialBanner> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
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
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('Dismiss'))
                ]),
          );
        },
        child: const Text('Next'),
      ),
    );
  }
}
