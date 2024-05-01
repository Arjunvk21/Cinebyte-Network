import 'package:cinebyte_network_application/user/direct_messaging_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notifications_page extends StatelessWidget {
  const notifications_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Custom_appbar_real(title: 'Notifications'),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => dm_page(),)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 210, 178),
                      borderRadius: BorderRadius.circular(40)),
                  height: 70,
                  child: Center(
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          radius: 25,
                        ), // Replace with your desired icon
                        title: Text('User ${index+1}',
                            style: GoogleFonts.acme(fontSize: 20)),
                        trailing: Container(
                          width: 25.0, // Adjust size as needed
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Color(
                                0xff36393F), // Change color for unread messages
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            '18',
                            style: GoogleFonts.acme(color: Colors.white),
                          )),
                        )),
                  ),
                ),
              ),
            );
          },itemCount: 5,
        ));
  }
}
