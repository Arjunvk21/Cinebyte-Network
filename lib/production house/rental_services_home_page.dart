import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rental_services_home_page extends StatelessWidget {
  const rental_services_home_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Rental services'),
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
            padding: const EdgeInsets.only(left: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcjGYaZz04pF-LeSMWR1qwSEBp61DShzvl-MAkkWvLQ&s'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcjGYaZz04pF-LeSMWR1qwSEBp61DShzvl-MAkkWvLQ&s'),
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcjGYaZz04pF-LeSMWR1qwSEBp61DShzvl-MAkkWvLQ&s'),
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcjGYaZz04pF-LeSMWR1qwSEBp61DShzvl-MAkkWvLQ&s'),
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcjGYaZz04pF-LeSMWR1qwSEBp61DShzvl-MAkkWvLQ&s'),
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        '17000/Day',
                        style: GoogleFonts.fugazOne(
                          color: Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 245,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red[600],
                        ))
                  ],
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5SsHVd6O9BGCsdOpnEmkn23RmBHsyLemsjDbZ9y2Tkw&s',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(
                          'Sony Alpha 7',
                          style: GoogleFonts.fugazOne(
                            color: Color.fromARGB(255, 46, 53, 62),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
                    )
                  ],
                ),
              ],
            ),
            width: width,
            height: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 206, 177),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
