import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/Rentalbookingdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class RentalBookingAdmin extends StatefulWidget {
  const RentalBookingAdmin({super.key});

  @override
  State<RentalBookingAdmin> createState() => _RentalBookingAdminState();
}

class _RentalBookingAdminState extends State<RentalBookingAdmin> {
   var time =TextEditingController();
  var date=TextEditingController();
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
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'BOOKING',
            style: GoogleFonts.inter(
                textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(129, 54, 141, 1),
            )),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time :',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        controller: time,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Date :',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        controller: date,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 55,top: 80),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => rentalbookingdetAdmin(Time:time.text,Date:date.text),));
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(color:Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(10) ),
                    child: Center(
                      child: Text('Book', style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        )),),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}