import 'dart:io';

import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class upload_post_page extends StatefulWidget {
  const upload_post_page({super.key});

  @override
  State<upload_post_page> createState() => _upload_post_pageState();
}

File? selectedimage;

class _upload_post_pageState extends State<upload_post_page> {
  final TextEditingController postnamecontroller = TextEditingController();
  final TextEditingController postdescriptioncontroller =
      TextEditingController();
  // final _firstor = FirebaseFirestore.instance;
  // final _auth = FirebaseAuth.instance;
  // final ImagePicker _imagepicker = ImagePicker();
  // Future<void> pickedpostfile() async {
  //   _imagepicker.pickImage(source: ImageSource.gallery);
  // }
// File? selectedimage;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.97;
    double containerwidth = MediaQuery.of(context).size.width * 0.90;
    double height = MediaQuery.of(context).size.height * 0.7;
    double containerheight = MediaQuery.of(context).size.height * 0.4;
    // String id = _auth.currentUser!.uid;
    return Scaffold(
      appBar: const Custom_appbar_real(title: 'Script upload'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: App_Custom_button(
                    textcolor: const Color.fromARGB(255, 33, 33, 33),
                    hsize: 30,
                    fontsize: 15,
                    onPressed: () {
                      // String id = _auth.currentUser!.uid;
                      // Map<String, dynamic> postdetailsmap = {
                      //   'postname': postnamecontroller.text,
                      //   'postdescription': postdescriptioncontroller.text,
                      //   'postfile': ''
                      // };
                    },
                    wsize: 70,
                    text: 'Upload'),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 234, 210, 178),
              ),
              width: width,
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      controller: postnamecontroller,
                      decoration: InputDecoration(
                          hintText: 'post name',
                          hintStyle: GoogleFonts.fugazOne(
                              color: const Color.fromARGB(155, 113, 113, 113))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      controller: postdescriptioncontroller,
                      decoration: InputDecoration(
                          hintText: 'Description',
                          hintStyle: GoogleFonts.fugazOne(
                              color: const Color.fromARGB(155, 113, 113, 113))),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  // Image.asset('images/upload icon.png')
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 212, 162)),
                    height: containerheight,
                    width: containerwidth,
                    child: IconButton(
                        onPressed: () {
                          // pickedpostfile();
                        },
                        icon: const Icon(
                          Icons.image,
                          size: 100,
                        )),
                  )
                  // Icon(
                  //   Icons.image,
                  //   color: const Color.fromARGB(255, 33, 33, 33),
                  //   size: 100,
                  // ),
                  // OutlinedButton(
                  //     onPressed: () {
                  //       pickedimagegallery();
                  //     },
                  //     child: Text(
                  //       'Choose a file',
                  //       style: GoogleFonts.fugazOne(color: Color(0xff36393F)),
                  //     ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
