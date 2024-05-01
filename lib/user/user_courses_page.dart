import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class courses_page extends StatelessWidget {
  final List courselist = ['c1', 'c2', 'c3', 'c4'];
  courses_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Courses'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.fugazOne(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'images/actingclass.jpg',
                              fit: BoxFit.cover,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Enroll',
                                style: GoogleFonts.fugazOne(
                                    color: Color(0xff36393F)),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 234, 210, 178))),
                            )
                          ],
                        ),
                        elevation: 10,
                      ),
                      width: width,
                      height: 150,
                    ),
                  )),
                );
              },
              itemCount: courselist.length,
            ),
          ),
        ],
      ),
    );
  }
}
