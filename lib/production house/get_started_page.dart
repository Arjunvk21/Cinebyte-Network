import 'package:cinebyte_network_application/production%20house/phone_number_verify.dart';
import 'package:cinebyte_network_application/production%20house/register_account.dart';
import 'package:cinebyte_network_application/production%20house/sign_in.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class get_started_page extends StatelessWidget {
  const get_started_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   // title: Text('CineByte Network'),
      //   backgroundColor: Colors.blueGrey[900],
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //       },
      //       icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white),
      //       padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      //     )
      //   ],
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                'Get Started!',
                style: GoogleFonts.fugazOne(
                    color: Color.fromARGB(255, 244, 207, 139), fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Sign_in_page()));
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.fugazOne(
                      color: Color(0xff2D3037), fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50), backgroundColor: mainbuttoncolor),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => phone_number_verify(),
                  ));
                },
                child: Text(
                  'Register',
                  style: GoogleFonts.fugazOne(
                      color: Color(0xff2D3037), fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50), backgroundColor: mainbuttoncolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
