import 'package:cinebyte_network_application/production%20house/create_group.dart';
import 'package:cinebyte_network_application/production%20house/group_chat_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class groups_view_page extends StatelessWidget {
  const groups_view_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Networking'),
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
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My groups',
                  style:
                      GoogleFonts.fugazOne(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Column(
              children: [
                GestureDetector(
                  onTap:  () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => group_chat_page(),
                  )),
                  child: Container(
                    decoration: BoxDecoration( color: Color.fromARGB(255, 234, 210, 178),borderRadius: BorderRadius.circular(40)),
                    height: 70,
                    
                    child: Center(
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            radius: 25,
                          ), // Replace with your desired icon
                          title: Text('Group 1',
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
                SizedBox(height: 10,),
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
                                               Color.fromARGB(255, 234, 210, 178),),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(200, 40),
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => create_group_page()));
                                    },
                                    child: Text(
                                      "Create",
                                      style: GoogleFonts.fugazOne(
                                          color: Color.fromARGB(255, 46, 53, 62), fontSize: 14),
                                    )),
                              ),
                            ),
                          ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
