import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rental_services_detail_page extends StatelessWidget {
  const rental_services_detail_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Rental services'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
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
          Container(
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 234, 210, 178),
            ),
            width: width,
            height: height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sony Alpha 7',
                    style: GoogleFonts.fugazOne(
                      color: Color.fromARGB(255, 46, 53, 62),
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5SsHVd6O9BGCsdOpnEmkn23RmBHsyLemsjDbZ9y2Tkw&s',
                        scale: 2,
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red[600],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(164, 167, 167, 171),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Image.network(
                                scale: 7,
                                'data:image/jpeg;base64,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')
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(164, 167, 167, 171),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Image.network(
                                scale: 7,
                                'data:image/jpeg;base64,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')
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(164, 167, 167, 171),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Image.network(
                                scale: 7,
                                'data:image/jpeg;base64,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')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      'Sony Alpha ILCE-7M3K Full-Frame 24.2MP Mirrorless Digital SLR Camera with 28-70mm Zoom Lens (4K Full Frame, Real-Time Eye Auto Focus, Tiltable LCD, Low Light Camera) with Free Bag - Black',
                      style: GoogleFonts.fugazOne(
                        color: Color.fromARGB(255, 46, 53, 62),
                      ),
                    ),
                  ),
                ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 240),
                      child: Text(
                        'Quantity',
                        style: GoogleFonts.fugazOne(
                          color: Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    children: [
                      Text(
                        'Select your date',
                        style: GoogleFonts.fugazOne(
                          color: Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                        // label: Text(
                        //   'Username',
                        //   style: GoogleFonts.fugazOne(),
                        // ),
                        suffixIcon: Icon(Icons.calendar_month)),
                  ),
                ),
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
                                                Color(0xff2D3037)),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(200, 40),
                                        )),
                                    onPressed: () {
                                      // Navigator.of(context).push(MaterialPageRoute(
                                      //     builder: (context) => register_account()));
                                    },
                                    child: Text(
                                      "Book",
                                      style: GoogleFonts.fugazOne(
                                          color: Colors.white, fontSize: 14),
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
