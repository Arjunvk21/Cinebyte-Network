import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_casting_calls_clicked_page extends StatelessWidget {
  const user_casting_calls_clicked_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'casting call'),
      body: Column(
        children: [
          Center(
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 229, 206, 177),
                  borderRadius: BorderRadius.circular(25)),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                'https://m.media-amazon.com/images/M/MV5BMGM4NGMyN2QtYTE4NS00N2I2LThjZWYtYTQ0ZGRjNTYwN2RlXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          App_Custom_button(
            textcolor: Color.fromARGB(255, 46, 53, 62),
            hsize: 30,
            wsize: 100,
            text: 'Apply',
            fontsize: 15,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: (Color(0xff2D3037)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
                  builder: ((context) {
                    return Container(
                      height: 150,
                      width: width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Click below to send',
                              style: GoogleFonts.fugazOne(
                                  color: (Color.fromARGB(255, 229, 206, 177)),
                                  fontSize: 18),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('images/whatsapp1.png')),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'images/instagram.png',
                                    scale: 1,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('images/gmail.png'))
                            ],
                          )
                        ],
                      ),
                    );
                  }));
            },
          )
        ],
      ),
    );
  }
}
