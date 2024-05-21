import 'package:cinebyte_network_application/production%20house/rental_servies_detail_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class rental_services_home_page extends StatelessWidget {
  const rental_services_home_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const Custom_appbar_real(title: 'Rental services'),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.fugazOne(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: const Color.fromARGB(0, 255, 255, 255),
                        indicator: const BoxDecoration(
                          color: Color.fromARGB(255, 234, 210, 178),
                        ),
                        labelColor: const Color(0xff2D3037),
                        unselectedLabelColor:
                            const Color.fromARGB(255, 195, 192, 192),
                        tabs: [
                          Tab(
                            icon: Image.asset('images/cam.png'),
                          ),
                          Tab(
                            icon: Image.asset('images/mic.png'),
                          ),
                          Tab(
                            icon: Image.asset('images/lights.png'),
                          ),
                          Tab(
                            icon: Image.asset('images/editing softwres.png'),
                          ),
                          Tab(
                            icon: Image.asset('images/green.png'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const rental_services_detail_page(),
                      )),
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    '17000/Day',
                                    style: GoogleFonts.fugazOne(
                                      color:
                                          const Color.fromARGB(255, 46, 53, 62),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 245,
                                // ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.red[600],
                                    ))
                              ],
                            ),
                            Image.asset(
                              'images/cam.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                Center(
                                  child: Text(
                                    'Sony Alpha 7',
                                    style: GoogleFonts.fugazOne(
                                      color:
                                          const Color.fromARGB(255, 46, 53, 62),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.shopping_cart))
                              ],
                            ),
                          ],
                        ),
                        width: width,
                        height: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 229, 206, 177),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  );
                },
                itemCount: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
