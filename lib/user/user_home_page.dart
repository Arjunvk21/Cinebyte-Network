import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class user_home_page extends StatefulWidget {
  const user_home_page({super.key});

  @override
  State<user_home_page> createState() => _production_house_home_pageState();
}

class _production_house_home_pageState extends State<user_home_page> {
  int bottomnavigation_indexnumber = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2D3037),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Home',
            style: GoogleFonts.fugazOne(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.add_location_alt_sharp)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          )
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Container(
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 234, 210, 178),
                ),
                width: width,
                height: 170,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 20),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Prithviraj productions',
                              style: GoogleFonts.acme(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'prithvirajproduction@gmail.com',
                              style: GoogleFonts.acme(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, right: 130),
                            child: Text(
                              'Actor',
                              style: GoogleFonts.acme(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, right: 105),
                            child: Text(
                              'Experience',
                              style: GoogleFonts.acme(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 70,
                            ),
                            child: Text(
                              '+91 9454737782',
                              style: GoogleFonts.acme(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_card_rounded)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://imagesvs.oneindia.com/webp/img/2024/02/bramayugam-small-1707971334.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://indiaglitz-media.s3.amazonaws.com/telugu/home/the-goat-life-review-1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://static.toiimg.com/thumb/msid-107578203,width-1280,height-720,resizemode-4/107578203.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.8,
                )),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 220,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Profile',
                                style: GoogleFonts.fugazOne(
                                    color: Color.fromARGB(255, 46, 53, 62),
                                    fontSize: 18),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_sharp)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(Icons.storage),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Gallery',
                                style: GoogleFonts.fugazOne(
                                    color: Color.fromARGB(255, 46, 53, 62),
                                    fontSize: 18),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_sharp)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(Icons.feedback),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Feedback',
                                style: GoogleFonts.fugazOne(
                                    color: Color.fromARGB(255, 46, 53, 62),
                                    fontSize: 18),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_sharp)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(Icons.logout),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'logout',
                                style: GoogleFonts.fugazOne(
                                    color: Color.fromARGB(255, 46, 53, 62),
                                    fontSize: 18),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_sharp)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              label: 'Schedules',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Color(0xff36393F)),
        ],
        currentIndex: bottomnavigation_indexnumber,
        onTap: (int index) {
          setState(() {
            bottomnavigation_indexnumber = index;
          });
        },
      ),
    );
  }
}
