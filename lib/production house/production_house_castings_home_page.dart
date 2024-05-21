import 'package:cinebyte_network_application/production%20house/create_casting_calls.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class casting_home_page extends StatelessWidget {
  const casting_home_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Casting calls'),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Color.fromARGB(255, 234, 210, 178),
                  ),
                  clipBehavior: Clip.hardEdge,

                  child: Card(
                    child: Image.network(
                      'https://pbs.twimg.com/media/FYwFduBaMAAYXCW.jpg',
                      fit: BoxFit.cover,
                    ),
                    elevation: 10,
                  ),
                  width: width,
                  height: 180,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(15),
                  //   color: Color.fromARGB(255, 234, 210, 178),
                  // ),
                  margin: EdgeInsets.only(top: 50),
                ),
              ],
            ),
          ),
        ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 234, 210, 178),
        child: Icon(Icons.add),
      ),
    );
  }
}
