import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login1()),
      );
    });
    return  Scaffold(
      backgroundColor: Color.fromRGBO(129, 54, 141, 1),
      body: SafeArea(child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Festive',
            style: GoogleFonts.irishGrover(
              textStyle: TextStyle(color: Colors.white),
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Fusion',
            style: GoogleFonts.irishGrover(
              textStyle: TextStyle(color: Colors.white),
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),)),

    );
  }
}