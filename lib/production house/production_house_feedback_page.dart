import 'package:cinebyte_network_application/firebase/firestore.dart';
import 'package:cinebyte_network_application/user/bottomnav.dart';
import 'package:cinebyte_network_application/user/user_home_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_string/random_string.dart';

class production_house_feedback_page extends StatefulWidget {
  const production_house_feedback_page({super.key});

  @override
  State<production_house_feedback_page> createState() =>
      _production_house_feedback_pageState();
}

class _production_house_feedback_pageState
    extends State<production_house_feedback_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    TextEditingController feedback_email_controller = TextEditingController();
    TextEditingController feedback_description_controller =
        TextEditingController();
    final _firstor = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    final CollectionReference Users =
        FirebaseFirestore.instance.collection('Users');
    String id = _auth.currentUser!.uid;

    return Scaffold(
      appBar: const Custom_appbar_real(title: 'Feedback'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: _firstor.collection('Users').doc(id).snapshots(),
                builder: (context, snapshot) {
                  DocumentSnapshot data = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 480,
                        height: 430,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(
                                      0.5), // Shadow color with transparency
                              blurRadius: 5.0, // Blur radius of the shadow
                              spreadRadius:
                                  2.0, // Spread radius (optional) to enlarge the shadow
                              offset: const Offset(2.0,
                                  4.0), // Offset the shadow in x and y directions
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: feedback_email_controller,
                                style: GoogleFonts.fugazOne(color: textcolor),
                                // initialValue: _username,style: GoogleFonts.acme(color:Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    '${data['email']}',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ),
                                  prefixIcon: const Icon(Icons.email,
                                      color: Colors.white),

                                  // suffixIcon: Icon(Icons.visibility_off_rounded)
                                ),
                              ),
                              TextField(
                                controller: feedback_description_controller,
                                style: GoogleFonts.fugazOne(color: textcolor),
                                keyboardType: TextInputType.multiline,
                                minLines:
                                    3, // This sets the initial number of lines
                                maxLines:
                                    5, // This allows up to 5 lines (same as previous example)
                                decoration: InputDecoration(
                                  label: Text(
                                    'Type your queries',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ),
                                  prefixIcon: const Icon(Icons.feedback,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 234, 210, 178)),
                                          minimumSize: MaterialStatePropertyAll(
                                            Size(width, 50),
                                          )),
                                      onPressed: () async {
                                        String id = FirebaseAuth
                                            .instance.currentUser!.uid;
                                        Map<String, dynamic> feedbackinfomap = {
                                          'feedback_user_email':
                                              data.get('email'),
                                          'feedback_description':
                                              feedback_description_controller
                                                  .text,
                                          'id': id,
                                        };
                                        await firebaseHelper()
                                            .addfeedback(feedbackinfomap, id)
                                            .then((value) {
                                          Fluttertoast.showToast(
                                              msg: "Feedback sent succesfully",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 243, 234, 226),
                                              textColor:
                                                  const Color(0xff262A31),
                                              fontSize: 16.0);
                                        });
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    custombottomnavigationbar()));
                                      },
                                      child: Text(
                                        "Submit",
                                        style: GoogleFonts.fugazOne(
                                            color: const Color.fromARGB(
                                                255, 46, 53, 62),
                                            fontSize: 18),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
