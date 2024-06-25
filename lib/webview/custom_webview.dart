// import 'package:axs/constants/api_constants.dart';
// import 'package:axs/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:hithink_tracking/hithink_tracking.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class CustomWebView extends StatefulWidget {
//   CustomWebView(
//       {super.key,
//       required this.pageInId,
//       required this.pageInName,
//       required this.pageOutId,
//       required this.pageOutName,
//       required this.userAgent,
//       required this.webViewKey,
//       required this.loadRequestLoad,
//       });

//   String pageInId = '';
//   String pageInName = '';
//   String pageOutId = '';
//   String pageOutName = '';
//   String userAgent = '';
//   String webViewKey;
//   String loadRequestLoad = '';

//   String route = '';

//   @override
//   State<CustomWebView> createState() => _CustomWebViewState();
// }

// class _CustomWebViewState extends State<CustomWebView> {
//   late final WebViewController controller;
//   bool errorOnWebView = false, isLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     HithinkTracking.pageIn(widget.pageInId, widget.pageInName);
//     initialize();
//     runFunctionAfterDelay();
//   }

//   @override
//   void dispose() {
//     HithinkTracking.pageOut(widget.pageOutId, widget.pageOutName);
//     super.dispose();
//   }

//   void initialize() {
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setUserAgent(widget.userAgent)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onPageFinished: (String url) {
//             if (!isLoaded) {
//               setState(() {
//                 isLoaded = true;
//               });
//             }
//           },
//           onWebResourceError: (error) {
//             setState(() {
//               errorOnWebView = true;
//               isLoaded = true;
//             });
//           },
//           onNavigationRequest: (NavigationRequest request) {
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(
//         Uri.parse(widget.loadRequestLoad),
//       );
//   }

//   Future<void> runFunctionAfterDelay() async {
//     await Future.delayed(const Duration(seconds: 15));
//     if (!isLoaded && !errorOnWebView) {
//       setState(() {
//         isLoaded = true;
//         errorOnWebView = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     String key = widget.webViewKey;
//     String routes = widget.route;
//     return Scaffold(
//       key: Key(key),
//       appBar: AppBar(
//         leading: GestureDetector(
//             onTap: () async {
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 routes,
//                 (route) => true,
//               );
//             },
//             child: const Icon(
//               Icons.arrow_back,
//             )),
//         centerTitle: true,
//         elevation: 0,
//         scrolledUnderElevation: 0,
//         title: Text(
//           "Terms and Conditions",
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//       ),
//       body: Stack(
//         children: [
//           !errorOnWebView
//               ? WebViewWidget(
//                   controller: controller,
//                 )
//               : const Stack(),
//           errorOnWebView
//               ? const Positioned.fill(
//                   child: Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(20.0),
//                       child: Text(
//                         "We are experiencing some connectivity issues, please try again later.",
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 )
//               : const Stack(),
//           !isLoaded
//               ? Center(
//                   child: Image.asset('assets/images/loading.gif',
//                       width: 100, height: 100))
//               : const Stack(),
//         ],
//       ),
//     );
//   }
// }
