// import 'package:app1/SchemesPages/Scheme1Folder/CompEngg.dart';
// import 'package:flutter/material.dart';
// import '../../DataHolder.dart';
//
// class Scheme1 extends StatefulWidget {
//   const Scheme1({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<Scheme1> createState() => _Scheme1();
// }
//
// class _Scheme1 extends State<Scheme1> {
//   var gender;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: DropdownButton(
//         hint: const Text("Select Department"),
//         //Initial value
//         value: gender,
//         // Down Arrow Icon
//         icon: const Icon(Icons.arrow_drop_down),
//
//         // items: const [
//         //   DropdownMenuItem(value: 'Earth', child: Text('Earth')),
//         //   DropdownMenuItem(value: 'Mars', child: Text('Mars')),
//         // ],
//
//         items: items.map((String items) {
//           return DropdownMenuItem(
//             value: items,
//             child: Text(items),
//           );
//         }).toList(),
//
//         onChanged: (val) {
//           setState(() {
//             gender = val;
//           });
//
//           switch (val) {
//             case 'Computer Engineering':
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => const CompEngg(title: "rjfr")));
//               break;
//             //   case 'Information Technology':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page1(title: "eefv")));
//             //     break;
//             //   case 'Civil Engineering':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page2(title: "rftgt")));
//             //   case 'Mechanical Engineering':
//             //     Navigator.of(context).push(
//             //         MaterialPageRoute(builder: (context) => const Page3()));
//             //     break;
//             //   case 'Electrical Engineering':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page1(title: "eefv")));
//             //     break;
//             //   case 'ENTC Engineering':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page2(title: "rftgt")));
//             //   case 'Chemical Engineering':
//             //     Navigator.of(context).push(
//             //         MaterialPageRoute(builder: (context) => const Page3()));
//             //     break;
//             //   case 'Automobile Engineering':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page1(title: "eefv")));
//             //     break;
//             //   case 'D. Pharmacy':
//             //     Navigator.of(context).push(MaterialPageRoute(
//             //         builder: (context) => const Page2(title: "rftgt")));
//           }
//         },
//       ),
//     );
//   }
// }
