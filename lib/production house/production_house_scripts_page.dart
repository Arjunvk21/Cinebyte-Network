import 'package:cinebyte_network_application/production%20house/production_house_script_download.dart';
import 'package:cinebyte_network_application/user/script_upload_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class producton_house_scripts_page extends StatefulWidget {
  const producton_house_scripts_page({super.key});

  @override
  State<producton_house_scripts_page> createState() =>
      _producton_house_scripts_pageState();
}

class _producton_house_scripts_pageState
    extends State<producton_house_scripts_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: const Custom_appbar_real(title: 'Scripts'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(),
                  child: Center(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const production_house_script_download_page(),
                      )),
                      child: Container(
                        margin: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 234, 210, 178),
                        ),
                        width: width,
                        height: 180,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 20),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                                    radius: 25,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 10),
                                  child: Text(
                                    'Alex D Paul',
                                    style: GoogleFonts.acme(
                                      color: const Color(0xff2D3037),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    '10/11/2023',
                                    style: GoogleFonts.acme(
                                        color: const Color(0xff2D3037)),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(),
                              child: Divider(
                                thickness: 1,
                                color: Color(0xff36393F),
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      '''       A young scientist developing a revolutionary energy
                              source must choose  between personal gain and 
                              saving the planet. ''',
                                      style: GoogleFonts.lateef(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 17,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Genre : Sci-Fi , Survival Thriller ',
                                      style: GoogleFonts.acme(),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => script_upload_page(),
          ));
        },
        backgroundColor: Color.fromARGB(255, 234, 210, 178),
        child: Icon(Icons.add),
      ),
    );
  }
}
