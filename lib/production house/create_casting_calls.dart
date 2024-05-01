import 'package:cinebyte_network_application/production%20house/production_house_castings_home_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class create_casting_calls extends StatelessWidget {
  const create_casting_calls({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Create casting calls'),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
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
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 229, 206, 177)),
                          minimumSize: MaterialStatePropertyAll(
                            Size(200, 40),
                          )),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => casting_home_page()));
                      },
                      child: Text(
                        "Upload",
                        style: GoogleFonts.fugazOne(
                            color: Color.fromARGB(255, 46, 53, 62),
                            fontSize: 14),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 206, 177),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Icon(
                      Icons.cloud_upload,
                      color: Color.fromARGB(255, 46, 53, 62),
                      size: 120,
                    ),
                  ),
                  Container(child: OutlinedButton(onPressed: (){}, child: Text('Upload a file',style: GoogleFonts.fugazOne(color:Color(0xff2D3037)),),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
