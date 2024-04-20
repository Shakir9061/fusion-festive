import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class rentalbookingdetAdmin extends StatefulWidget {
  var Time;
  var Date;
   rentalbookingdetAdmin({super.key, required this. Time, required this. Date});

  @override
  State<rentalbookingdetAdmin> createState() => _rentalbookingdetAdminState();
}

class _rentalbookingdetAdminState extends State<rentalbookingdetAdmin> {
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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'Time :',
                    style: GoogleFonts.inter(
                        textStyle:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 70,top: 10),
                   child: Text(
                               widget.Time,
                               style: GoogleFonts.inter(
                    textStyle: TextStyle(
                                 fontWeight: FontWeight.w700,
                                 fontSize: 17,
                                 color: Color.fromRGBO(180, 151, 181, 1),
                               )),
                             ),
                 ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: Text(
                'Date :',
                style: GoogleFonts.inter(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70,top: 10),
              child: Text(widget.Date,style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Color.fromRGBO(180, 151, 181, 1),
                )),),
            ),
              Padding(
                padding: const EdgeInsets.only(left:40,top: 10),
                child: Text('Status :',style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                )),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70,top: 10),
                child: Text('Approved',style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Color.fromRGBO(180, 151, 181, 1),
                )),),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 60),
                     child: RatingBar.builder(
                                 initialRating: 3,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemSize: 35,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                                 itemBuilder: (context, _) => Icon(
                                   Icons.star,
                                   color:Color.fromRGBO(129, 54, 141, 1),
                                 ),
                                
                                 onRatingUpdate: (rating) {
                                   print(rating);
                                 },
                              ),
                   ),
                 ],
               ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}