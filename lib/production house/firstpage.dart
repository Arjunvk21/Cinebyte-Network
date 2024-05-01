import 'dart:async';

import 'package:cinebyte_network_application/production%20house/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5 ), () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => get_started_page(),));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CineByte Network",
            style: GoogleFonts.fugazOne(
                color: Color.fromARGB(255, 244, 207, 139), fontSize: 30),
          ),
          Text("I would rather die of passion than boredom",
              style: GoogleFonts.fugazOne(
                color: Color.fromARGB(255, 244, 207, 139),
              ))
          // RichText(
          //     text: TextSpan(
          //         style: TextStyle(color: Color(0xffF4D193)),
          //         children: [
          //       TextSpan(
          //           text: 'CineByte Network',
          //           style: TextStyle(fontSize: 30)),
          //       TextSpan(
          //           text:
          //               '\n\nI would rather die for passion rather than boredom')
          //     ]))
        ],
      ),
    ));
  }
}
