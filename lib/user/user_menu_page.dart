import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class user_page_menu_page extends StatefulWidget {
  const user_page_menu_page({super.key});

  @override
  State<user_page_menu_page> createState() => _production_page_menu_pageState();
}

class _production_page_menu_pageState extends State<user_page_menu_page> {
  int bottomnavigation_indexnumber = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2D3037),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Menu',
            style: GoogleFonts.fugazOne(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40, top: 15),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
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
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                    // margin: EdgeInsets.all(70),
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 234, 210, 178),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.description,
                              color: Color(0xff262A31),
                              size: 35,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Scripts',
                              style: GoogleFonts.fugazOne(
                                  color: Color(0xff2D3037), fontSize: 17),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Container(
                      // margin: EdgeInsets.all(60),
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 234, 210, 178),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.group,
                                color: Color(0xff262A31),
                                size: 35,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Networking',
                                style: GoogleFonts.fugazOne(
                                    color: Color(0xff2D3037), fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.only(
                  //   left: 70,
                  // ),
                  // margin: EdgeInsets.all(60),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 234, 210, 178),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.theater_comedy,
                            color: Color(0xff262A31),
                            size: 35,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Castings',
                            style: GoogleFonts.fugazOne(
                                color: Color(0xff2D3037), fontSize: 17),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  // margin: EdgeInsets.only(
                  //   left: 70,
                  // ),
                  // margin: EdgeInsets.all(60),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 234, 210, 178),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Color(0xff262A31),
                            size: 35,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Rental Service',
                            style: GoogleFonts.fugazOne(
                                color: Color(0xff2D3037), fontSize: 17),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(
                    //   left: 70,
                    // ),
                    // margin: EdgeInsets.all(60),
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 234, 210, 178),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_book,
                              color: Color(0xff262A31),
                              size: 35,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Courses',
                              style: GoogleFonts.fugazOne(
                                  color: Color(0xff2D3037), fontSize: 17),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
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
              icon: Icon(Icons.add_box),
              label: 'Gallery',
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
