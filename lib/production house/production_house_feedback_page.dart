import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class production_house_feedback_page extends StatelessWidget {
  const production_house_feedback_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Feedback'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 480,
                height: 430,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 38, 41, 47),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 0, 0)
                          .withOpacity(0.5), // Shadow color with transparency
                      blurRadius: 5.0, // Blur radius of the shadow
                      spreadRadius:
                          2.0, // Spread radius (optional) to enlarge the shadow
                      offset: Offset(
                          2.0, 4.0), // Offset the shadow in x and y directions
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      TextFormField(
                       
                        // initialValue: _username,style: GoogleFonts.acme(color:Colors.white),
                        decoration: InputDecoration(
                            label: Text(
                              'Enter your Email',
                              style: GoogleFonts.fugazOne(),
                            ),
                            prefixIcon: Icon(Icons.email),
                            
                            // suffixIcon: Icon(Icons.visibility_off_rounded)
                            ),
                      ),
                      TextField(
  keyboardType: TextInputType.multiline,
  minLines: 3, // This sets the initial number of lines
  maxLines: 5, // This allows up to 5 lines (same as previous example)
  decoration:  InputDecoration(
    label: Text(
                              'Type your queries',style: GoogleFonts.fugazOne(),
                              
                            ),
    prefixIcon: Icon(Icons.feedback),

  ),
),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(20),
                            child: ElevatedButton(
                              
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 220, 206, 143)),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(width, 50),
                                    )),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => register_account()));
                                },
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.fugazOne(
                                      color: Color.fromARGB(255, 46, 53, 62),
                                      fontSize: 18),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
