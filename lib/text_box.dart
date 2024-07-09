// import 'package:flutter/material.dart';
// import 'package:uitest/button/button.dart';

// class MyTextBox extends StatefulWidget {
//   const MyTextBox({super.key});
//   @override
//   State<StatefulWidget> createState() {
//     return _MyTextBox();
//   }
// }

// class _MyTextBox extends State<MyTextBox> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _dateController = TextEditingController();
//   String postTexts = '';
//   bool _hidePasswords = true;

//   void _pickDate(BuildContext context) async {
//     DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime.now(),
//     );

//     if (pickedDate != null) {
//       setState(() {
//         //_dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
//         _dateController.text =
//             '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}';
//         //print("print : "+_dateController.text);
//       });
//     }
//   }

//   void hidePasswords() {
//     setState(() {
//       if (_hidePasswords) {
//         _hidePasswords = false;
//       } else {
//         _hidePasswords = true;
//       }
//     });
//   }

//   void _postText() {
//     setState(() {
//       postTexts = _nameController.text;
//     });
//   }

//   bool error = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       child: Column(
//         children: [
//           Container(
//             color: Colors.amber,
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: TextField(
//                     controller: _nameController,
//                     onChanged: (value) {
//                       if (value.length > 5) {
//                         setState(() {
//                           error = true;
//                         });
//                       } else {
//                         setState(() {
//                           error = false;
//                         });
//                       }
//                     },
//                     decoration: InputDecoration(
//                       errorMaxLines: 3,
//                       // error: Text(
//                       //   error
//                       //       ? "Char is between 1 to 5 fsdjfk ljsaklj flkfks  ajklfjas lkdjflksajs"
//                       //       : "",
//                       //   style: TextStyle(color: Color.fromARGB(255, 133, 10, 2)),
//                       //   textAlign: TextAlign.justify,
//                       // ),
//                       errorText: error
//                           ? "Char is between 1 to 5fsdjfkljsakljflkfksajklfjaslkdjflksajs"
//                           : "",
//                       hintText: 'Enter your name',
//                       contentPadding: const EdgeInsets.only(
//                           left: 4, top: 12, bottom: 0, right: 4),
//                       //border: InputBorder.none,
//                       // border:
//                       //     UnderlineInputBorder(borderRadius: BorderRadius.circular(4)),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8)),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           _nameController.clear();
//                         },
//                         icon: const Icon(Icons.cancel_presentation),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: TextField(
//                     controller: _nameController,
//                     onChanged: (value) {
//                       if (value.length > 5) {
//                         setState(() {
//                           error = true;
//                         });
//                       } else {
//                         setState(() {
//                           error = false;
//                         });
//                       }
//                     },
//                     decoration: InputDecoration(
//                       errorText: error ? "Char is between 1 to 5" : "",
//                       hintText: 'Enter your name',
//                       contentPadding: const EdgeInsets.only(
//                           left: 4, top: 12, bottom: 0, right: 4),
//                       //border: InputBorder.none,
//                       // border:
//                       //     UnderlineInputBorder(borderRadius: BorderRadius.circular(4)),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8)),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           _nameController.clear();
//                         },
//                         icon: const Icon(Icons.cancel_presentation),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           TextField(
//             obscureText: _hidePasswords,
//             decoration: InputDecoration(
//                 suffixIcon: IconButton(
//                     onPressed: () {
//                       hidePasswords();
//                     },
//                     icon: const Icon(Icons.visibility)),
//                 hintText: 'Enter your password',
//                 border: const OutlineInputBorder()),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           TextField(
//             controller: _dateController,
//             decoration: InputDecoration(
//               hintText: 'Data Time',
//               border: const OutlineInputBorder(),
//               suffixIcon: IconButton(
//                   onPressed: () {
//                     _pickDate(context);
//                   },
//                   icon: const Icon(Icons.calendar_month)),
//             ),
//             readOnly: true,
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 _postText();
//               },
//               child: const Text('Post')),
//           const SizedBox(
//             height: 32,
//           ),
//           Expanded(
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   padding: const EdgeInsets.all(5)),
//               child: Container(
//                 decoration: const BoxDecoration(
//                     //color: Colors.blue,
//                     ),
//                 child: Center(
//                   child: Text(
//                     postTexts,
//                     style: const TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyTextBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTextBoxState();
  }
}

const double fontSize1 = 23.0;
class _MyTextBoxState extends State<MyTextBox> {
  double fontSize2 = 23;
  @override
  Widget build(BuildContext context) {
    double fontSize3 = 23;
    return Text(
      "Hello",
      style: TextStyle(fontSize: fontSize3),
    );
  }
}
