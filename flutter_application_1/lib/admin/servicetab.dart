import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class serviceTabadmin extends StatefulWidget {
  const serviceTabadmin({super.key});

  @override
  State<serviceTabadmin> createState() => _serviceTabadminState();
}

class _serviceTabadminState extends State<serviceTabadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Bridal gown:',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'we provide hand made bridel gown',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  'groom salwar:',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'we provide grooms salwar',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
