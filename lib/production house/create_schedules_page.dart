import 'package:cinebyte_network_application/production%20house/meeting_scheduled.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class create_schedules_page extends StatefulWidget {
  const create_schedules_page({super.key});

  @override
  State<create_schedules_page> createState() => _create_schedules_pageState();
}

class _create_schedules_pageState extends State<create_schedules_page> {
  @override
  Widget build(BuildContext context) {
    DateTime _datetime = DateTime.now();
    TimeOfDay _selectedtime = TimeOfDay.now();
    bool _button1Enabled = true;
    bool _button2Enabled = true;

    void _onButton1Pressed() {
      setState(() {
        _button1Enabled = false;
        _button2Enabled = true;
      });
    }

    void _onButton2Pressed() {
      setState(() {
        _button1Enabled = true;
        _button2Enabled = false;
      });
    }

    void _showdatepicker() {
      showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2050))
          .then((value) => setState(() {
                _datetime = value!;
              }));
    }

    // List<bool> isSelected = [false, false];
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
      appBar: const Custom_appbar_real(title: 'Create schedules'),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'Discuss with Alex D paul',
                  style:
                      GoogleFonts.fugazOne(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 34, 37, 45),
              ),
              width: width,
              height: height,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 3, // This sets the initial number of lines
                      maxLines:
                          5, // This allows up to 5 lines (same as previous example)
                      decoration: InputDecoration(
                        label: Text(
                          'Description',
                          style: GoogleFonts.fugazOne(),
                        ),
                        prefixIcon: const Icon(Icons.description),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Add available dates',
                            style: GoogleFonts.fugazOne(
                                color: Colors.white, fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_datetime.day}-${_datetime.month}-${_datetime.year}',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _showdatepicker();
                                    },
                                    icon: const Icon(Icons.calendar_month)),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_selectedtime.hour}-${_selectedtime.minute}',
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      final TimeOfDay? timeofday =
                                          await showTimePicker(
                                              context: context,
                                              initialTime: _selectedtime,
                                              initialEntryMode:
                                                  TimePickerEntryMode.dial);
                                      if (timeofday != null) {
                                        setState(() {
                                          _selectedtime = timeofday;
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.schedule)),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_datetime.day}-${_datetime.month}-${_datetime.year}',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _showdatepicker();
                                    },
                                    icon: const Icon(Icons.calendar_month)),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_selectedtime.hour}-${_selectedtime.minute}',
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      final TimeOfDay? timeofday =
                                          await showTimePicker(
                                              context: context,
                                              initialTime: _selectedtime,
                                              initialEntryMode:
                                                  TimePickerEntryMode.dial);
                                      if (timeofday != null) {
                                        setState(() {
                                          _selectedtime = timeofday;
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.schedule)),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_datetime.day}-${_datetime.month}-${_datetime.year}',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _showdatepicker();
                                    },
                                    icon: const Icon(Icons.calendar_month)),
                                // suffixIcon: Icon(Icons.calendar_month),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    '${_selectedtime.hour}-${_selectedtime.minute}',
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      final TimeOfDay? timeofday =
                                          await showTimePicker(
                                              context: context,
                                              initialTime: _selectedtime,
                                              initialEntryMode:
                                                  TimePickerEntryMode.dial);
                                      if (timeofday != null) {
                                        setState(() {
                                          _selectedtime = timeofday;
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.schedule)),
                                suffixIconColor:
                                    const Color.fromARGB(255, 161, 160, 160),
                                hintStyle: GoogleFonts.fugazOne(
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Meeting type',
                      style: GoogleFonts.fugazOne(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 234, 210, 178),
                                ),
                                minimumSize: MaterialStatePropertyAll(
                                  Size(30, 40),
                                )),
                            onPressed:
                                _button1Enabled ? _onButton1Pressed : null,
                            child: Text(
                              "Virtual Room",
                              style: GoogleFonts.fugazOne(
                                  color: const Color.fromARGB(255, 46, 53, 62),
                                  fontSize: 12),
                            )),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                            style: const ButtonStyle(
                                minimumSize: MaterialStatePropertyAll(
                                  
                              Size(30, 40),
                            ),backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 234, 210, 178),)),
                            onPressed:
                                _button2Enabled ? _onButton2Pressed : null,
                            child: Text(
                              "Physical Room",
                              style: GoogleFonts.fugazOne(
                                  color: const Color.fromARGB(255, 46, 53, 62),
                                  fontSize: 12),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 234, 210, 178),
                                ),
                                minimumSize: MaterialStatePropertyAll(
                                  Size(200, 40),
                                )),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const meeting_scheduled()));
                            },
                            child: Text(
                              "Schedule",
                              style: GoogleFonts.fugazOne(
                                  color: const Color.fromARGB(255, 46, 53, 62),
                                  fontSize: 14),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
