import 'package:flutter/material.dart';


//this class is for QuestionPaper
class CompSem1Sub3QuestionPaper extends StatefulWidget {
  const CompSem1Sub3QuestionPaper({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CompSem1Sub3QuestionPaper> createState() => _CompSem1Sub3QuestionPaper();
}

class _CompSem1Sub3QuestionPaper extends State<CompSem1Sub3QuestionPaper> {
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
          child: Text("Question Paper for CompSem1Sub3"),
        )
    );
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class is for ModelAnsSheet
class CompSem1Sub3ModelAnsSheet extends StatefulWidget {
  const CompSem1Sub3ModelAnsSheet({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub3ModelAnsSheet> createState() =>
      _CompSem1Sub3ModelAnsSheet();
}

class _CompSem1Sub3ModelAnsSheet extends State<CompSem1Sub3ModelAnsSheet> {
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
          child: Text("CompSem1Sub1ModelAnsSheet for CompSem1Sub3"),
        ));
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for Curriculum
class CompSem1Sub3Curriculum extends StatefulWidget {
  const CompSem1Sub3Curriculum({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub3Curriculum> createState() =>
      _CompSem1Sub3Curriculum();
}

class _CompSem1Sub3Curriculum extends State<CompSem1Sub3Curriculum> {
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
          child: Text("CompSem1Sub3Curriculum for CompSem1Sub3"),
        ));
  }
}
