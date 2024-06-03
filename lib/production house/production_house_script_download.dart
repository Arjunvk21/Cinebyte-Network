import 'package:cinebyte_network_application/production%20house/create_schedules_page.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class production_house_script_download_page extends StatefulWidget {
  DocumentSnapshot scripts;
  DocumentSnapshot users;

  production_house_script_download_page(
      {Key? key, required this.scripts, required this.users})
      : super(key: key);

  @override
  State<production_house_script_download_page> createState() =>
      _production_house_script_download_pageState();
}

class _production_house_script_download_pageState
    extends State<production_house_script_download_page> {
  String? localFilePath;
  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
      appBar: const Custom_appbar_real(title: 'Scripts/Synopsys'),
      body: Center(child:Text('data') ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            backgroundColor: const Color.fromARGB(255, 234, 210, 178),
            child: const Icon(Icons.close),
          ),
          SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => create_schedules_page(
                  username: widget.users,
                  scriptdata: widget.scripts,
                ),
              ));
            },
            backgroundColor: const Color.fromARGB(255, 234, 210, 178),
            child: const Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
