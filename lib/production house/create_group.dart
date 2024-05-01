import 'package:cinebyte_network_application/production%20house/create_group_2.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class create_group_page extends StatefulWidget {
  const create_group_page({super.key});

  @override
  State<create_group_page> createState() => _create_group_pageState();
}

class _create_group_pageState extends State<create_group_page> {
  @override
  Widget build(BuildContext context) {
    bool? _isChecked = false;

    return Scaffold(
      appBar: Custom_appbar_real(title: 'Create group'),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return CheckboxListTile(
                title: Text(
                  'User',
                  style: GoogleFonts.fugazOne(color: Colors.white),
                ),
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue!;
                  });
                },
                activeColor: Colors.amber,
                checkColor: Colors.white,
              );
            }),
            separatorBuilder: ((context, index) {
              return Divider();
            }),
            itemCount: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => create_group_2(),
          ));
        },
        backgroundColor: Color.fromARGB(255, 234, 210, 178),
        child: Icon(Icons.send),
      ),
    );
  }
}
