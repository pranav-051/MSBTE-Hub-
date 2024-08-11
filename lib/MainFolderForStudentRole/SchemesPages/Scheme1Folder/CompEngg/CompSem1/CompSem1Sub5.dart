import 'package:flutter/material.dart';

//this class is for QuestionPaper
class CompSem1Sub5QuestionPaper extends StatefulWidget {
  const CompSem1Sub5QuestionPaper ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CompSem1Sub5QuestionPaper> createState() => _CompSem1Sub5QuestionPaper();
}

class _CompSem1Sub5QuestionPaper extends State<CompSem1Sub5QuestionPaper> {
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
          child: Text("Question Paper for CompSem1Sub5"),
        )
    );
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class is for ModelAnsSheet
class CompSem1Sub5ModelAnsSheet extends StatefulWidget {
  const CompSem1Sub5ModelAnsSheet({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub5ModelAnsSheet> createState() =>
      _CompSem1Sub5ModelAnsSheet();
}

class _CompSem1Sub5ModelAnsSheet extends State<CompSem1Sub5ModelAnsSheet> {
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
          child: Text("CompSem1Sub1ModelAnsSheet for CompSem1Sub5"),
        ));
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for Curriculum
class CompSem1Sub5Curriculum extends StatefulWidget {
  const CompSem1Sub5Curriculum({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub5Curriculum> createState() =>
      _CompSem1Sub5Curriculum();
}

class _CompSem1Sub5Curriculum extends State<CompSem1Sub5Curriculum> {
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
          child: Text("CompSem1Sub5Curriculum for CompSem1Sub5"),
        ));
  }
}