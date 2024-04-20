import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/NB.dart';
import 'package:flutter_application_1/admin/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Festive',
                  style: GoogleFonts.irishGrover(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(129, 54, 141, 1),
                    ),
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Fusion',
                  style: GoogleFonts.irishGrover(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(129, 54, 141, 1),
                    ),
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 50),
                  child: Text(
                    'Username',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            filled: true,
                            fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 30),
                  child: Text(
                    'Password',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            filled: true,
                            fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 5),
                  child: Text(
                    'forget password?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 77, 41, 238))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homeadmin(),));

                },
                child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(129, 54, 141, 1),
                    ),
                    child: Center(
                        child: Text(
                      'LOGIN',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not Registerred?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signupadmin(),));
                    },
                    child: Text(
                      ' Sign Up',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 77, 41, 238))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
