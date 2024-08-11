import 'package:flutter/material.dart';


//this class if for QuestionPaper
class CompSem1Sub2QuestionPaper extends StatefulWidget {
  const CompSem1Sub2QuestionPaper({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CompSem1Sub2QuestionPaper> createState() => _CompSem1Sub2QuestionPaper();
}

class _CompSem1Sub2QuestionPaper extends State<CompSem1Sub2QuestionPaper> {
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
        body: const Center(
          child: Text("Question Paper for CompSem1Sub2"),
        )
    );
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for ModelAnsSheet
class CompSem1Sub2ModelAnsSheet extends StatefulWidget {
  const CompSem1Sub2ModelAnsSheet({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub2ModelAnsSheet> createState() =>
      _CompSem1Sub2ModelAnsSheet();
}

class _CompSem1Sub2ModelAnsSheet extends State<CompSem1Sub2ModelAnsSheet> {
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
        body: const Center(
          child: Text("CompSem1Sub1ModelAnsSheet for CompSem1Sub2"),
        ));
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for Curriculum
class CompSem1Sub2Curriculum extends StatefulWidget {
  const CompSem1Sub2Curriculum({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub2Curriculum> createState() =>
      _CompSem1Sub2Curriculum();
}

class _CompSem1Sub2Curriculum extends State<CompSem1Sub2Curriculum> {
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
        body: const Center(
          child: Text("CompSem1Sub2Curriculum for CompSem1Sub2"),
        ));
  }
}
