import 'package:flutter/material.dart';

//this class is for QuestionPaper
class CompSem1Sub6QuestionPaper extends StatefulWidget {
  const CompSem1Sub6QuestionPaper ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CompSem1Sub6QuestionPaper> createState() => _CompSem1Sub6QuestionPaper();
}

class _CompSem1Sub6QuestionPaper extends State<CompSem1Sub6QuestionPaper> {
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
          child: Text("Question Paper for CompSem1Sub6"),
        )
    );
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class is for ModelAnsSheet
class CompSem1Sub6ModelAnsSheet extends StatefulWidget {
  const CompSem1Sub6ModelAnsSheet({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub6ModelAnsSheet> createState() =>
      _CompSem1Sub6ModelAnsSheet();
}

class _CompSem1Sub6ModelAnsSheet extends State<CompSem1Sub6ModelAnsSheet> {
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
          child: Text("CompSem1Sub1ModelAnsSheet for CompSem1Sub6"),
        ));
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for Curriculum
class CompSem1Sub6Curriculum extends StatefulWidget {
  const CompSem1Sub6Curriculum({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub6Curriculum> createState() =>
      _CompSem1Sub6Curriculum();
}

class _CompSem1Sub6Curriculum extends State<CompSem1Sub6Curriculum> {
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
          child: Text("CompSem1Sub6Curriculum for CompSem1Sub6"),
        ));
  }
}