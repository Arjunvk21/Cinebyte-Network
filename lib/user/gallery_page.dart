import 'package:cinebyte_network_application/user/sinlge_post_view_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class gallery_page extends StatelessWidget {
  const gallery_page({super.key});

  @override
  Widget build(BuildContext context) {
    final List postslist = [1,2,3,4,5,6,7,8,9,11,12,1,3,14];
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Gallery'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
              'Posts',
              style: GoogleFonts.fugazOne(color: Colors.white, fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => single_post_view_page()),
              );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 4, right: 4),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'images/aavesham.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: postslist.length,),
                
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 234, 210, 178),
        child: Icon(Icons.add),
      ),
    );
    
  }
}
