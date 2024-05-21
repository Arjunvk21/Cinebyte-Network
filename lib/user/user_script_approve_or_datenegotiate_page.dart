import 'package:cinebyte_network_application/user/user_date_negotiate_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_scripts_approve_or_datenegotiate_page extends StatelessWidget {
  const user_scripts_approve_or_datenegotiate_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Scripts/Synopsys'),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 234, 210, 178),
              ),
              width: width,
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Alex D Paul',
                      style: GoogleFonts.acme(
                        color: Color(0xff2D3037),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, right: 90),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff36393F),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Title : Zero Point Paradox',
                      style: GoogleFonts.acme(
                        color: Color(0xff2D3037),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, right: 90),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff36393F),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '''A young scientist developing a revolutionary
energy source must choose between personal
gain and saving the planet.''',
                      style: GoogleFonts.lateef(
                        color: Color(0xff2D3037),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                            padding: const EdgeInsets.only(),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Material(
                                elevation: 10,color: Colors.transparent,
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BorderRadius.circular(20),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff2D3037)),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(200, 50),
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => user_date_negotiate_page()));
                                    },
                                    child: Text(
                                      "Approve",
                                      style: GoogleFonts.fugazOne(
                                          color: Colors.white, fontSize: 14),
                                    )),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Material(
                                elevation: 10,color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff2D3037)),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(200, 50),
                                        )),
                                    onPressed: () {
                                      // Navigator.of(context).push(MaterialPageRoute(
                                      //     builder: (context) => register_account()));
                                    },
                                    child: Text(
                                      "Date negotiate",
                                      style: GoogleFonts.fugazOne(
                                          color: Colors.white, fontSize: 14),
                                    )),
                              ),
                            ),
                          ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
