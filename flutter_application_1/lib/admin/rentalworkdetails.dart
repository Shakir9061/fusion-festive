import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/Rentalenquiry.dart';
import 'package:flutter_application_1/admin/rentalbooking.dart';
import 'package:google_fonts/google_fonts.dart';

class RentalwrkdetAdmin extends StatefulWidget {
  const RentalwrkdetAdmin({super.key});

  @override
  State<RentalwrkdetAdmin> createState() => _RentalwrkdetAdminState();
}

class _RentalwrkdetAdminState extends State<RentalwrkdetAdmin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        shadowColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            'WORKS',
            style: GoogleFonts.inter(
                textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(129, 54, 141, 1),
            )),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Image(
                  fit: BoxFit.fill,
                  height: 350,
                  width: 500,
                  image: AssetImage('images/2.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 3,backgroundColor: Color.fromRGBO(129, 54, 141, 1),),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'white gown',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                                                        fontStyle: FontStyle.italic,

                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(129, 54, 141, 1),
                              )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                                                    CircleAvatar(radius: 3,backgroundColor: Color.fromRGBO(129, 54, 141, 1),),

                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text(
                              'Hand embroidary',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                                                        fontStyle: FontStyle.italic,

                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(129, 54, 141, 1),
                              )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                                                    CircleAvatar(radius: 3,backgroundColor: Color.fromRGBO(129, 54, 141, 1),),

                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'frolar design',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(129, 54, 141, 1),
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RentalEnquiryAdmin(),));
                    }, 
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(color: Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('Enquiry',style: GoogleFonts.inter(textStyle:TextStyle(color:Colors.white)),)),
                    ),
                  ),
                  InkWell(
                    onTap:() {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => RentalBookingAdmin(),));

                    }, 
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(color: Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('Booking',style: GoogleFonts.inter(textStyle:TextStyle(color:Colors.white)),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ), 
    );
  }
}