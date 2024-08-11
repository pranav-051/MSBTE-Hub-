import 'package:flutter/material.dart';
import 'package:app10/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompEngg.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub1.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub2.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub3.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub4.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub5.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub6.dart';
import '/MainFolderForStudentRole/SchemesPages/Scheme1Folder/CompEngg/CompSem1/CompSem1Sub7.dart';

class Common extends StatefulWidget {
  const Common({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Common> createState() => _Common();
}

class _Common extends State<Common> {
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
        body: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
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
                "  Choose what you want!",
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

          ///For Question paper //////////////////////////////////////////////
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.white,
                  elevation: 4,
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size.fromHeight(50),
                  side: const BorderSide(color: Colors.blue, width: 1)),

              //for Comp. Sem1 all subjects Question Paper
              onPressed: () {
                switch (CommonPageSwitchValue) {
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub1QuestionPaper(
                              title: 'Computer sem1 sub 1')),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub2QuestionPaper(
                              title: 'Computer sem1 sub 2')),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub3QuestionPaper(
                              title: 'Computer sem1 sub 3')),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub4QuestionPaper(
                              title: 'Computer sem1 sub 4')),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub5QuestionPaper(
                              title: 'Computer sem1 sub 5')),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub6QuestionPaper(
                              title: 'Computer sem1 sub 6')),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompSem1Sub7QuestionPaper(
                              title: 'Computer sem1 sub 7')),
                    );
                    break;
                }
              },
              child: const Text(
                "Question Papers",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              )),

          const SizedBox(
            height: 12,
          ),

          /////////////////end//////////////////////////////////////////

          ///for Model answers sheeets //////////////////////////////////////////////
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
            child: const Text("Model Answers Sheets ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),

            //for Comp. Sem1 all subjects Model Answer sheets
            onPressed: () {
              switch (CommonPageSwitchValue) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub1ModelAnsSheet(
                            title: 'Computer sem1 sub 1')),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub2ModelAnsSheet(
                            title: 'Computer sem1 sub 2')),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub3ModelAnsSheet(
                            title: 'Computer sem1 sub 3')),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub4ModelAnsSheet(
                            title: 'Computer sem1 sub 4')),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub5ModelAnsSheet(
                            title: 'Computer sem1 sub 5')),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub6ModelAnsSheet(
                            title: 'Computer sem1 sub 6')),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub7ModelAnsSheet(
                            title: 'Computer sem1 sub 7')),
                  );
                  break;
              }
            },
          ),
          const SizedBox(
            height: 12,
          ),

          /// ///////below button is for curriculum///////////////////////////////////////
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
              "Curriculum ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            //for Comp. Sem1 all subjects curriculum
            onPressed: () {
              switch (CommonPageSwitchValue) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub1Curriculum(
                            title: 'Computer sem1 sub 1')),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub2Curriculum(
                            title: 'Computer sem1 sub 2')),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub3Curriculum(
                            title: 'Computer sem1 sub 3')),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub4Curriculum(
                            title: 'Computer sem1 sub 4')),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub5Curriculum(
                            title: 'Computer sem1 sub 5')),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub6Curriculum(
                            title: 'Computer sem1 sub 6')),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CompSem1Sub7Curriculum(
                            title: 'Computer sem1 sub 7')),
                  );
                  break;
              }
            },
          ),
          const SizedBox(
            height: 12,
          ),
          /////////////////////////////////////////////////////////////////
          const Divider(
            height: 50,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 100,
          )
        ]));
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////// ////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// ////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////// ////////////////////////////////
//End of UI design
//below code is for PDF view Section
