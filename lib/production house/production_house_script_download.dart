import 'package:cinebyte_network_application/production%20house/production_house_schedules_page.dart';
import 'package:cinebyte_network_application/production%20house/scripts_approve_or_reject_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class production_house_script_download_page extends StatelessWidget {
  const production_house_script_download_page({super.key});

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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width,
                      height: 250,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 220, 197, 167),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Text(
                              'Download the synopsis',
                              style: GoogleFonts.acme(
                                color: Color.fromARGB(255, 37, 39, 45),
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.cloud_download,
                            size: 90,
                            color: Color(0xff2D3037),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(20),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff2D3037)),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(200, 40),
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => scripts_approve_or_reject_page()));
                                    },
                                    child: Text(
                                      "Download",
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
            ),
          ),
        ],
      ),
    );
  }
}
