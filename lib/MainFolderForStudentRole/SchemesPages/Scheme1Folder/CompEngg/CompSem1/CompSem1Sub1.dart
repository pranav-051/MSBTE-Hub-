import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

// //this class if for QuestionPaper
// class CompSem1Sub1QuestionPaper extends StatefulWidget {
//   const CompSem1Sub1QuestionPaper({Key? key, required this.title})
//       : super(key: key);
//   final String title;
//   @override
//   State<CompSem1Sub1QuestionPaper> createState() =>
//       _CompSem1Sub1QuestionPaper();
// }
//
// class _CompSem1Sub1QuestionPaper extends State<CompSem1Sub1QuestionPaper> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           iconTheme: const IconThemeData(color: Colors.black),
//           centerTitle: true,
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("MSBTE Hub           ",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 22,
//                       fontWeight: FontWeight.w300)),
//             ],
//           ),
//         ),
//         body: const Center(
//           child: Text("Question Paper for CompSem1Sub1"),
//         ));
//   }
// }









class CompSem1Sub1QuestionPaper extends StatefulWidget {
  const CompSem1Sub1QuestionPaper({super.key, required String title});

  @override
  State<CompSem1Sub1QuestionPaper> createState() => _CompSem1Sub1QuestionPaper();
}

class _CompSem1Sub1QuestionPaper extends State<CompSem1Sub1QuestionPaper> {
//variables
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> pdfData = [];

  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  //below function  is for uploading the file
  Future<String?> uploadpdf(String fileName, File file) async {
    final reference =
    FirebaseStorage.instance.ref().child("pdfs/$fileName.pdf");
    final uploadTask = reference.putFile(file);
    await uploadTask.whenComplete(() {});
    final downloadLink = await reference.getDownloadURL();
    return downloadLink;
  }

  void pickFile() async {
    final pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (pickedFile != null) {
      String fileName = pickedFile.files[0].name;
      File file = File(pickedFile.files[0].path!);
      final downloadLink = await uploadpdf(fileName, file);

      await _firebaseFirestore.collection("pdfs").add({
        "name": fileName,
        "url": downloadLink,
      }).then((DocumentReference doc) {
        //then pasun print paryant cha new code aahe
        print("My document id is ${doc.id}");
      });

      print("PDF uploaded successfully");
    }
  }
  //end of uploading file funtion code
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  //below function is for fetching the file
  void getAllPdf() async {
    final results = await _firebaseFirestore.collection("pdfs").get();
    pdfData = results.docs.map((e) => e.data()).toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAllPdf();
  }
  //end of fetching file function code
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  //below function is for refreshing the page
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Future<void> _handleRefresh() async {
    //reloading tasks some time
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => super.widget));
  }
  //end of refreshing page code
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  // //below function is for deleting the pdf from firebase
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  deletePDF(id, name) {
    FirebaseFirestore.instance.collection("pdfs").doc(id).delete();
    Fluttertoast.showToast(msg: "$name is deleted successfully!");
  }
// //end of deleting file function from firebase
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("PDFs"),
      ),
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.blue.shade100,
        height: 150,
        backgroundColor: Colors.lightBlue.shade300,
        animSpeedFactor: 10,
        showChildOpacityTransition: false,
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("pdfs").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return GridView.builder(
                itemCount: pdfData
                    .length, //it will give the no of pdf which are uploded...
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisSpacing: 0,
                  // crossAxisSpacing: 4,
                  childAspectRatio: 0.90,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                PDFViewerScreen(pdfUrl: pdfData[index]['url'])),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/pdf.png",
                              height: 100,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                pdfData[index]['name'],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(38, 10, 8, 0),
                            //   child: OutlinedButton(
                            //     style: OutlinedButton.styleFrom(
                            //       foregroundColor: Colors.white54,
                            //       side: const BorderSide(
                            //           color: Colors.black87, width: 1),
                            //     ),
                            //     onPressed: () async {
                            //       print("PDF Deleted");
                            //       await deletePDF(snapshot.data?.docs[index].id,
                            //           pdfData[index]["name"]);
                            //     },
                            //     child: const Row(
                            //       children: [
                            //         Icon(
                            //           Icons.delete,
                            //           color: Colors.red,
                            //           size: 20,
                            //         ),
                            //         SizedBox(
                            //           width: 8,
                            //         ),
                            //         Text(
                            //           "Delete",
                            //           style: TextStyle(
                            //               fontSize: 11,
                            //               color: Colors.red,
                            //               fontWeight: FontWeight.w400),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: pickFile,
      //   child: const Icon(Icons.upload_file),
      // ),
    );
  }
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++2nd class new Page +++++++++++++++++
//below code is for opening the pdf in new page/screen
class PDFViewerScreen extends StatefulWidget {
  final String pdfUrl;

  const PDFViewerScreen({super.key, required this.pdfUrl});

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  PDFDocument? document;

  void initialisePDF() async {
    document = await PDFDocument.fromURL(widget.pdfUrl);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initialisePDF();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("PDF view"),
      ),
      body: document != null
          ? PDFViewer(document: document!)
          : const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
//end of pdf opening file class
// code
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for ModelAnsSheet
class CompSem1Sub1ModelAnsSheet extends StatefulWidget {
  const CompSem1Sub1ModelAnsSheet({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub1ModelAnsSheet> createState() =>
      _CompSem1Sub1ModelAnsSheet();
}

class _CompSem1Sub1ModelAnsSheet extends State<CompSem1Sub1ModelAnsSheet> {
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
          child: Text("CompSem1Sub1ModelAnsSheet for CompSem1Sub1"),
        ));
  }
}
//End of above class


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//this class if for Curriculum
class CompSem1Sub1Curriculum extends StatefulWidget {
  const CompSem1Sub1Curriculum({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<CompSem1Sub1Curriculum> createState() =>
      _CompSem1Sub1Curriculum();
}

class _CompSem1Sub1Curriculum extends State<CompSem1Sub1Curriculum> {
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
          child: Text("CompSem1Sub1Curriculum for CompSem1Sub1"),
        ));
  }
}

