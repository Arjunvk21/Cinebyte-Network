// import 'dart:io';

// import 'package:cinebyte_network_application/firebase/firestore.dart';
// import 'package:cinebyte_network_application/util/appcustomattributes.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:google_fonts/google_fonts.dart';

// class script_upload_page extends StatefulWidget {
//   const script_upload_page({super.key});

//   @override
//   State<script_upload_page> createState() => _script_upload_pageState();
// }

// File? file;
// TextEditingController scriptnamecontroller = TextEditingController();
// TextEditingController scriptdescriptioncontroller = TextEditingController();
// TextEditingController scriptgenrecontroller = TextEditingController();

// class _script_upload_pageState extends State<script_upload_page> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width * 0.97;
//     double height = MediaQuery.of(context).size.height * 0.7;

//     Future selectfile() async {
//       final selectedfile = await FilePicker.platform.pickFiles(
//           allowMultiple: false,
//           type: FileType.custom,
//           allowedExtensions: ['pdf']);
//       if (selectedfile != null && selectedfile.files.single.path != null) {
//         return File(selectedfile.files.single.path!);
//       }
//       return null;
//     }

//     // Future uploadfile() async {
//     //   final path=
//     // }

//     return Scaffold(
//       appBar: Custom_appbar_real(title: 'Script upload'),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
//                 child: App_Custom_button(
//                     textcolor: const Color.fromARGB(255, 33, 33, 33),
//                     hsize: 30,
//                     fontsize: 15,
//                     onPressed: () async {
//                       if (file == null) return null;
//                       String id = FirebaseAuth.instance.currentUser!.uid;
//                       Map<String, dynamic> scriptuploadmap = {
//                         'script name': scriptnamecontroller.text,
//                         'script description': scriptdescriptioncontroller.text,
//                         'script genre': scriptgenrecontroller.text,
//                         'script file': '',
//                         // 'script id':id,
//                       };
//                       await firebaseHelper()
//                           .addscripts(scriptuploadmap, id)
//                           .then((value) {
//                         Fluttertoast.showToast(
//                             msg: "Script details uploaded succesfully",
//                             toastLength: Toast.LENGTH_SHORT,
//                             gravity: ToastGravity.CENTER,
//                             timeInSecForIosWeb: 1,
//                             backgroundColor: Colors.green,
//                             textColor: Colors.white,
//                             fontSize: 16.0);
//                       });
//                       Navigator.of(context).pop();
//                     },
//                     wsize: 70,
//                     text: 'Upload'),
//               ),
//             ),
//             // SizedBox(
//             //   height: 10,
//             // ),
//             Container(
//               margin: EdgeInsets.only(top: 30),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color.fromARGB(255, 234, 210, 178),
//               ),
//               width: width,
//               height: height,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 30, right: 30, top: 30),
//                     child: TextFormField(
//                       style: GoogleFonts.fugazOne(
//                           color: const Color.fromARGB(255, 33, 33, 33)),
//                       controller: scriptnamecontroller,
//                       decoration: InputDecoration(
//                           hintText: 'Script name',
//                           hintStyle: GoogleFonts.fugazOne(
//                               color: Color.fromARGB(155, 113, 113, 113))),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 30, right: 30, top: 30),
//                     child: TextFormField(
//                       style: GoogleFonts.fugazOne(
//                           color: const Color.fromARGB(255, 33, 33, 33)),
//                       controller: scriptdescriptioncontroller,
//                       decoration: InputDecoration(
//                           hintText: 'Description',
//                           hintStyle: GoogleFonts.fugazOne(
//                               color: Color.fromARGB(155, 113, 113, 113))),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 30, right: 30, top: 30),
//                     child: TextFormField(
//                       style: GoogleFonts.fugazOne(
//                           color: const Color.fromARGB(255, 33, 33, 33)),
//                       controller: scriptgenrecontroller,
//                       decoration: InputDecoration(
//                           hintText: 'Genre',
//                           hintStyle: GoogleFonts.fugazOne(
//                               color: Color.fromARGB(155, 113, 113, 113))),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Image.asset('images/upload icon.png')
//                   Icon(
//                     Icons.cloud_upload,
//                     color: const Color.fromARGB(255, 33, 33, 33),
//                     size: 100,
//                   ),
//                   OutlinedButton(
//                       onPressed: () {
//                         selectfile().then((value) async {
//                           SettableMetadata metadata =
//                               SettableMetadata(contentType: 'application/pdf');
//                           final currenttime = TimeOfDay.now();
//                           UploadTask uploadTask = FirebaseStorage.instance
//                               .ref()
//                               .child('scriptsfiles/scripts$currenttime')
//                               .putFile(file!, metadata);
//                           TaskSnapshot snapshot = await uploadTask;

//                           await snapshot.ref.getDownloadURL().then((url) {
//                             String id = FirebaseAuth.instance.currentUser!.uid;
//                             FirebaseFirestore.instance
//                                 .collection('Users')
//                                 .doc(id)
//                                 .collection('Scripts')
//                                 .doc(id)
//                                 .update({'script file': url});
//                           });
//                         });
//                       },
//                       child: Text(
//                         'Choose a file',
//                         style: GoogleFonts.fugazOne(color: Color(0xff36393F)),
//                       ))
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_string/random_string.dart';

class script_upload_page extends StatefulWidget {
  const script_upload_page({super.key});

  @override
  State<script_upload_page> createState() => _script_upload_pageState();
}

class _script_upload_pageState extends State<script_upload_page> {
  File? file;
  TextEditingController scriptnamecontroller = TextEditingController();
  TextEditingController scriptdescriptioncontroller = TextEditingController();
  TextEditingController scriptgenrecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.97;
    double height = MediaQuery.of(context).size.height * 0.7;

    Future<File?> selectFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (result != null && result.files.single.path != null) {
        return File(result.files.single.path!);
      }
      return null;
    }

    Future<void> uploadScriptDetails() async {
      if (file == null) return;
      try {
        String userId = FirebaseAuth.instance.currentUser!.uid;
        final currenttime = DateTime.now().millisecondsSinceEpoch.toString();
        SettableMetadata metadata =
            SettableMetadata(contentType: 'application/pdf');
        UploadTask uploadTask = FirebaseStorage.instance
            .ref()
            .child('scriptsfiles/script_$currenttime.pdf')
            .putFile(file!, metadata);

        TaskSnapshot snapshot = await uploadTask;
        String downloadUrl = await snapshot.ref.getDownloadURL();
        String Id = randomAlphaNumeric(10);
        Map<String, dynamic> scriptUploadMap = {
          'script id':Id,
          'script name': scriptnamecontroller.text,
          'script description': scriptdescriptioncontroller.text,
          'script genre': scriptgenrecontroller.text,
          'script file': downloadUrl
        };

        await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .collection('Scripts')
            .doc(Id)
            .set(scriptUploadMap);

        Fluttertoast.showToast(
          msg: "Script details uploaded successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );

        Navigator.of(context).pop();
      } catch (e) {
        Fluttertoast.showToast(
          msg: "Failed to upload script: $e",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('Script Upload')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: ElevatedButton(
                  onPressed: uploadScriptDetails,
                  child:
                      Text('Upload', style: GoogleFonts.fugazOne(fontSize: 15)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 234, 210, 178),
              ),
              width: width,
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(255, 33, 33, 33)),
                      controller: scriptnamecontroller,
                      decoration: InputDecoration(
                        hintText: 'Script name',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(255, 33, 33, 33)),
                      controller: scriptdescriptioncontroller,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(255, 33, 33, 33)),
                      controller: scriptgenrecontroller,
                      decoration: InputDecoration(
                        hintText: 'Genre',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(Icons.cloud_upload,
                      color: const Color.fromARGB(255, 33, 33, 33), size: 100),
                  OutlinedButton(
                    onPressed: () async {
                      file = await selectFile();
                      if (file != null) {
                        Fluttertoast.showToast(
                          msg: "File selected: ${file!.path}",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      } else {
                        Fluttertoast.showToast(
                          msg: "No file selected",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    },
                    child: Text(
                      'Choose a file',
                      style: GoogleFonts.fugazOne(color: Color(0xff36393F)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
