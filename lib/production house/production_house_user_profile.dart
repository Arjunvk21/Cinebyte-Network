import 'package:cinebyte_network_application/production%20house/production_house_home_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class production_house_user_profile_page extends StatelessWidget {
  final String _username = 'Prithviraj Productions';
  final String _email = 'prithvirajproductions@gmail.com';
  final String _password = 'prithvi@24supriya';
  const production_house_user_profile_page({super.key});

  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'User Profile'),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 85,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                        ),
                      ),
                      Positioned(
                          top: 120,
                          right: 20,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.photo_camera,
                                  color: Color(0xff2D3037),
                                )),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffE7BE99)),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 480,
            height: 430,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 38, 41, 47),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0)
                      .withOpacity(0.5), // Shadow color with transparency
                  blurRadius: 5.0, // Blur radius of the shadow
                  spreadRadius:
                      2.0, // Spread radius (optional) to enlarge the shadow
                  offset: Offset(
                      2.0, 4.0), // Offset the shadow in x and y directions
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: _username,style: GoogleFonts.acme(color:Colors.white),
                    decoration: InputDecoration(
                      label: Text(
                        'Username',
                        style: GoogleFonts.fugazOne(),
                      ),
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      suffixIcon: Icon(Icons.edit)
                      // suffixIcon: Icon(Icons.visibility_off_rounded)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    initialValue: _email,style: GoogleFonts.acme(color:Colors.white),
                    decoration: InputDecoration(
                        label: Text(
                          'Email',
                          style: GoogleFonts.fugazOne(),
                        ),
                        prefixIcon: Icon(Icons.email_rounded),
                        suffixIcon: Icon(Icons.edit)),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    initialValue: _password,style: GoogleFonts.acme(color:Colors.white),
                    decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: GoogleFonts.fugazOne(),
                        ),
                        prefixIcon: Icon(Icons.lock_rounded),
                        suffixIcon: Icon(Icons.edit)),
                  ),
                  
                  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 220, 206, 143)),
                          minimumSize: MaterialStatePropertyAll(
                            Size(width, 50),
                          )),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => production_house_home_page()));
                      },
                      child: Text(
                        "Save Changes",
                        style: GoogleFonts.fugazOne(
                            color: Color.fromARGB(255, 46, 53, 62),
                            fontSize: 18),
                      )),
                ),
              ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
