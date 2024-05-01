import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class skill_upload extends StatefulWidget {
  const skill_upload({super.key});

  @override
  State<skill_upload> createState() => _skill_uploadState();
}

class _skill_uploadState extends State<skill_upload> {
  @override
  Widget build(BuildContext context) {
    final List listitems = [
      'Acting',
      'Direction',
      'Editing',
      'Music Direction'
    ];

    String? values;
    double width = MediaQuery.of(context).size.width * 0.97;
    double height = MediaQuery.of(context).size.height * 0.7;
    return Flexible(
      child: Scaffold(
        appBar: Custom_appbar_real(title: 'Skills'),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 234, 210, 178),
                ),
                width: width,
                height: height,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(60),
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: Color(0xff36393F),
                          ),
                          hint: Text(
                            'Select your skill',
                            style: GoogleFonts.fugazOne(
                                color: Color(0xff36393F), fontSize: 20),
                          ),
                          value: values,
                          onChanged: (newvalue) {
                            setState(() {
                              values = newvalue as String?;
                            });
                          },
                          items: listitems.map((valueitem) {
                            return DropdownMenuItem(
                              value: valueitem,
                              child: Text(valueitem),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Experience level',
                              hintStyle: GoogleFonts.fugazOne(
                                color: Color(0xff36393F),
                              )),
                        ),
                      ),SizedBox(height: 50,),
                      Container(height: 40,width: 120,child: ElevatedButton(onPressed: (){}, child: Text('Submit',style: GoogleFonts.fugazOne(color:Colors.white),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll( Color(0xff36393F),)),))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
