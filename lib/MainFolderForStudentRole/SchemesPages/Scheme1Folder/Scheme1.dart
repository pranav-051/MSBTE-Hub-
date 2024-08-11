import 'package:app10/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompEngg.dart';
import 'package:flutter/material.dart';


class Scheme1 extends StatefulWidget {
  const Scheme1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Scheme1> createState() => _Scheme1();
}

class _Scheme1 extends State<Scheme1> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(10), children: <Widget>[
      const SizedBox(
        height: 12,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.multiple_stop,
            color: Colors.blueGrey,
          ),
          Text(
            "  PLease choose your branch!",
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

      ///Branch 1 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Colors.white,
            elevation: 4,
            alignment: Alignment.centerLeft,
            minimumSize: const Size.fromHeight(50),
            side: const BorderSide(color: Colors.blue, width: 1)),
        child: const Text(
          "Computer Engineering",
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const CompEngg(title: 'SideNavPage2')),
          )
        },
      ),
      const SizedBox(
        height: 12,
      ),

      ///Branch 2 //////////////////////////////////////////////
      OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Colors.white,
            elevation: 4,
            alignment: Alignment.centerLeft,
            minimumSize: const Size.fromHeight(50),
            side: const BorderSide(color: Colors.blue, width: 1),
          ),
          child: const Text("Information Technology",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) =>  const CSESem1Sub2(title: 'SideNavPage2')),
            // );
          }),
      const SizedBox(
        height: 12,
      ),

      ///Branch 3 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Civil Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) =>  const CSESem1Sub3(title: 'SideNavPage2')),
          //);
        },
      ),
      const SizedBox(
        height: 12,
      ),

      ///Branch 4 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Mechanical Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          //   Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) =>  const CSESem1Sub4(title: 'SideNavPage2')),
          // );
        },
      ),
      const SizedBox(
        height: 12,
      ),

      ///Branch 5 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Electrical Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) =>  const CSESem1Sub5(title: 'SideNavPage2')),
          //      );
        },
      ),
      const SizedBox(
        height: 12,
      ),

      ///Branch 4 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Electronics and Telecommunication Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 13),
        ),
        onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context) =>  const CSESem1Sub6(title: 'SideNavPage2')),
          //     );
        },
      ),
      const SizedBox(
        height: 8,
      ),

      ///Branch 7 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Chemical Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context) =>  const CSESem1Sub7(title: 'SideNavPage2')),
          //);
        },
      ),
      const SizedBox(
        height: 8,
      ),

      ///Branch 8//////////////////////////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "Automobile Engineering",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context) =>  const CSESem1Sub7(title: 'SideNavPage2')),
          //);
        },
      ),
      const SizedBox(
        height: 8,
      ),

      ///Branch 7 //////////////////////////////////////////////
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          elevation: 4,
          alignment: Alignment.centerLeft,
          minimumSize: const Size.fromHeight(50),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        child: const Text(
          "D. Pharmacy",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context) =>  const CSESem1Sub7(title: 'SideNavPage2')),
          //);
        },
      ),
      const SizedBox(
        height: 8,
      ),
      //end of buttons

      const Divider(
        height: 50,
        color: Colors.grey,
      ),
      const SizedBox(
        height: 100,
      )
    ]
    );
  }
}
