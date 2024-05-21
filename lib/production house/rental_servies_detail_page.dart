import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rental_services_detail_page extends StatefulWidget {
  const rental_services_detail_page({super.key});

  @override
  State<rental_services_detail_page> createState() => _rental_services_detail_pageState();
}

class _rental_services_detail_pageState extends State<rental_services_detail_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
        DateTime _datetime = DateTime.now();

    double height = MediaQuery.of(context).size.height * 0.7;
    void _showdatepicker() {
      showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2050))
          .then((value) => setState(() {
                _datetime = value!;
              }));
    }
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
                        child: Image.asset('images/cam.png')),
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
                            Image.asset('images/cam.png',scale: 5,),
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
                            Image.asset('images/cam.png',scale: 5,),
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
                            Image.asset('images/cam.png',scale: 5,),
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
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        '17000/Day',
                        style: GoogleFonts.fugazOne(
                          color: Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'Quantity',
                        style: GoogleFonts.fugazOne(
                          color: Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.add))
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
                        suffixIcon: IconButton(onPressed: (){
                          
                                      _showdatepicker();
                                    
                        }, icon: Icon(Icons.calendar_month))),
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
                                  MaterialStatePropertyAll(Color(0xff2D3037)),
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
