import 'package:cinebyte_network_application/production%20house/production_hhouse_scripts_page.dart';
import 'package:cinebyte_network_application/production%20house/production_house_home_page.dart';
import 'package:cinebyte_network_application/production%20house/production_house_menu_page.dart';
import 'package:cinebyte_network_application/production%20house/production_house_settings_page.dart';
import 'package:cinebyte_network_application/production%20house/production_house_shooting_Page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class production_house_schedules_page extends StatefulWidget {
  production_house_schedules_page({super.key});

  @override
  State<production_house_schedules_page> createState() =>
      _production_house_schedules_pageState();
}

class _production_house_schedules_pageState
    extends State<production_house_schedules_page> {
        int bottomnavigation_indexnumber = 2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    // ignore: prefer_const_constructors
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2D3037),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Schedules',
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
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Container(
                  
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Color(0xff51555D),
                    
                  ),
                  child: const TabBar(
                    
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Color.fromARGB(0, 255, 255, 255),
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 234, 210, 178),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      labelColor: Color(0xff2D3037),
                      unselectedLabelColor: Color.fromARGB(255, 195, 192, 192),
                      tabs: [
                        App_custom_tabbar(title: 'Scripts'),
                        App_custom_tabbar(title: "Shootings"),
                      ]),
                ),
              )),
        ),
        body: TabBarView(children: [
          production_house_scripts_page(),
          production_house_shooting_page(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => production_house_home_page(),
                      )),
                  child: Icon(Icons.home)),
              label: 'home',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => production_page_menu_page(),
                      )),
                  child: Icon(Icons.menu)),
              label: 'Menu',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => production_house_schedules_page(),
                      )),
                  child: Icon(Icons.event_note)),
              label: 'Schedules',
              backgroundColor: Color(0xff36393F)),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => production_house_settings_page(),
                      )),
                  child: Icon(Icons.settings)),
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
      ),
    );
  }
}
