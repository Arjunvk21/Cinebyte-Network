import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class script_upload_page extends StatelessWidget {
  const script_upload_page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.97;
    double height = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Script upload'),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
              child: App_Custom_button(
                  textcolor: Color(0xff36393F),
                  hsize: 30,
                  fontsize: 15,
                  onPressed: () {},
                  wsize: 70,
                  text: 'Upload'),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
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
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Script name',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Description',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Genre',
                        hintStyle: GoogleFonts.fugazOne(
                            color: Color.fromARGB(155, 113, 113, 113))),
                  ),
                ),SizedBox(height: 20,),
                // Image.asset('images/upload icon.png')
                Icon(Icons.cloud_upload,color:Color(0xff36393F),size: 100,),
                OutlinedButton(onPressed: (){}, child: Text('Choose a file',style: GoogleFonts.fugazOne(color:Color(0xff36393F)),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
