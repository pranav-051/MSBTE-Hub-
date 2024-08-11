import 'package:flutter/material.dart';

import '../../../../DataHolder.dart';
import '../../../Common.dart';

// ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
var CommonPageSwitchValue;

class CompEngg extends StatefulWidget {
  const CompEngg({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CompEngg> createState() => _CompEngg();
}

class _CompEngg extends State<CompEngg> {
  var cse_sem1_sub;
  var cse_sem2_sub;
  var cse_sem3_sub;
  var cse_sem4_sub;
  var cse_sem5_sub;
  var cse_sem6_sub;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("MSBTE Hub           ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w300)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.multiple_stop,
                  color: Colors.blueGrey,
                ),
                Text(
                  """   Please choose your semester 
   and subject""",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Divider(
              height: 10,
              thickness: 1.5,
              color: Colors.black12,
            ),
            const SizedBox(height: 10),

            ///Sem 1 //////////////////////////////////////////////
            const Text(
              "Semester 1",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem1_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem1_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem1_sub = val;
                });
                switch (val) {
                  case '[CC1403] Basic Chemistry':
                    CommonPageSwitchValue = 1;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: 'CommonPage')));
                    break;
                  case '[CC1402] Basic Physics':
                    CommonPageSwitchValue = 2;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: "eefv")));
                    break;
                  case '[CC1401] English':
                    CommonPageSwitchValue = 3;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: "rftgt")));
                  case '[CC1404] Basic Mathematics':
                    CommonPageSwitchValue = 4;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: 'common')));
                    break;
                  case '[CC2402] Fundamental of ICT':
                    CommonPageSwitchValue = 5;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: "eefv")));
                    break;
                  case '[CC2401] Engineering Graphics':
                    CommonPageSwitchValue = 6;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: "rftgt")));
                    break;
                  case '[CM2403] Computer Workshop Practices':
                    CommonPageSwitchValue = 7;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Common(title: "eefv")));
                    break;
                }
              },
            ),

            ///Sem 2 //////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Semester 2",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem2_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem2_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem2_sub = val;
                });
                // switch (val) {
                //   case 'Computer Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         ))
                //     );
                //     break;
                //   case 'Information Technology':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'Civil Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Mechanical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(title: 'Page3')));
                //     break;
                //   case 'Electrical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'ENTC Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Chemical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         )));
                //     break;
                //   case 'Automobile Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'D. Pharmacy':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                // }
              },
            ),

            ///Sem 3 //////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Semester 3",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem3_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem3_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem3_sub = val;
                });
                // switch (val) {
                //   case 'Computer Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         ))
                //     );
                //     break;
                //   case 'Information Technology':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'Civil Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Mechanical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(title: 'Page3')));
                //     break;
                //   case 'Electrical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'ENTC Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Chemical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         )));
                //     break;
                //   case 'Automobile Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'D. Pharmacy':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                // }
              },
            ),

            ///Sem 4 //////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Semester 4",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem4_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem4_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem4_sub = val;
                });
                // switch (val) {
                //   case 'Computer Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         ))
                //     );
                //     break;
                //   case 'Information Technology':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'Civil Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Mechanical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(title: 'Page3')));
                //     break;
                //   case 'Electrical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'ENTC Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Chemical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         )));
                //     break;
                //   case 'Automobile Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'D. Pharmacy':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                // }
              },
            ),

            ///Sem 5 //////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Semester 5",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem5_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem5_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem5_sub = val;
                });
                // switch (val) {
                //   case 'Computer Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         ))
                //     );
                //     break;
                //   case 'Information Technology':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'Civil Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Mechanical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(title: 'Page3')));
                //     break;
                //   case 'Electrical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'ENTC Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Chemical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         )));
                //     break;
                //   case 'Automobile Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'D. Pharmacy':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                // }
              },
            ),

            ///Sem 6 //////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Semester 6",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
            DropdownButton(
              style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              hint: const Text("Select subject"),
              //Initial value
              value: cse_sem6_sub,
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),
              items: I_Comp_Sem6_Sub_list.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (val) {
                setState(() {
                  cse_sem6_sub = val;
                });
                // switch (val) {
                //   case 'Computer Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         ))
                //     );
                //     break;
                //   case 'Information Technology':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'Civil Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Mechanical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(title: 'Page3')));
                //     break;
                //   case 'Electrical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'ENTC Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                //   case 'Chemical Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page3(
                //           title: 'Page3',
                //         )));
                //     break;
                //   case 'Automobile Engineering':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page1(title: "eefv")));
                //     break;
                //   case 'D. Pharmacy':
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => const Page2(title: "rftgt")));
                // }
              },
            ),

            /////////////////////////////////////////////////////////////////

            const Divider(
              height: 50,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 100,
            )
          ]),
        ));
  }
}
