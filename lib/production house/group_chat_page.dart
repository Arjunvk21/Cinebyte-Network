import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class group_chat_page extends StatelessWidget {
  const group_chat_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Networking'),
      body: Column(
        children: [
          Center(
            child: Material(
              elevation: 10,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 210, 178),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                    ),
                    title: Text(
                      'Group 1',
                      style: GoogleFonts.acme(
                          fontSize: 18, color: Color(0xff2D3037)),
                    ),
                    subtitle: Text(
                      'tap here for group info',
                      style: GoogleFonts.barlow(color: Color(0xff2D3037)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xff2D3037),
          child: Column(
            children: [
              Container(
                height: 50,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 234, 210, 178)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.photo_camera,
                        size: 30,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                )),
              ),
            ],
          )),
    );
  }
}
