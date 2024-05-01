// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'dart:developer';

import 'package:cinebyte_network_application/production%20house/production_house_home_page.dart';
import 'package:cinebyte_network_application/production%20house/register_account.dart';
import 'package:cinebyte_network_application/production%20house/reset_password.dart';
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_in_page extends StatefulWidget {
  Sign_in_page({super.key});

  @override
  State<Sign_in_page> createState() => _Sign_in_pageState();
}

class _Sign_in_pageState extends State<Sign_in_page> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _issecurepassword = true;
  String email = "", password = "";
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool isloading = false;

  login(BuildContext context) async {
    if (password != null) {
      try {
        setState(() {
          isloading = true;
        });
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Sign in successful'),
        ));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const production_house_home_page(),
          ),
        );
        setState(() {
          isloading = false;
        });
      } on FirebaseAuthException catch (e) {
        setState(() {
          isloading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invaild Email or Password"),
            backgroundColor:
                Theme.of(context).colorScheme.error, // Use error color
          ),
        );

        // Show error message to user
      }
    }
  }

  void _submitform() {
    if (_formkey.currentState!.validate()) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const production_house_home_page(),
      ));
    }
  }

  String? _validateemail(value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? _validatepassword(value) {
    if (value!.isEmpty) {
      return 'Enter a password';
    }
    RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(value)) {
      return 'Please enter a valid password';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  'Sign In',
                  style: App_custom_heading_textStyle.style,
                ),
              ),
              TextFormField(
                controller: emailcontroller,
                style: GoogleFonts.fugazOne(color: maintextcolor),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a valid Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label: Text(
                      'Email',
                      style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(142, 158, 158, 158)),
                    ),
                    prefixIcon: const Icon(Icons.account_circle_rounded,
                        color: Color.fromARGB(142, 158, 158, 158))),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: passwordcontroller,
                style: GoogleFonts.fugazOne(color: maintextcolor),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: _validatepassword,
                obscureText: _issecurepassword,
                decoration: InputDecoration(
                    label: Text(
                      'Password',
                      style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(142, 158, 158, 158)),
                    ),
                    prefixIcon: const Icon(Icons.lock_rounded,
                        color: Color.fromARGB(142, 158, 158, 158)),
                    suffixIcon: togglepassword()),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Reset_password_page(),
                      ));
                    },
                    child: Text(
                      'Forgot password?',
                      style: App_custom_textstyle.style,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 220, 206, 143)),
                          minimumSize: MaterialStatePropertyAll(
                            Size(width, 50),
                          )),
                      onPressed: () async {
                        setState(() {
                          isloading = true;
                        });
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            email = emailcontroller.text;
                            password = passwordcontroller.text;
                          });
                          await login(context);
                          setState(() {
                            isloading=false;
                          });
                        }
                      },
                      child:isloading
                      ? const Center(child: CircularProgressIndicator())
                      : Text(
                        "Sign in",
                        style: GoogleFonts.fugazOne(
                            color: const Color.fromARGB(255, 46, 53, 62),
                            fontSize: 18),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.fugazOne(
                          color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => register_account(),
                          ));
                        },
                        child: Text(
                          'Register here',
                          style: GoogleFonts.fugazOne(
                              color: maintextcolor, fontSize: 20),
                        )),
                  )
                ],
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Or login with', style: App_custom_textstyle.style),
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook_rounded,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglepassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _issecurepassword = !_issecurepassword;
        });
      },
      icon: _issecurepassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
