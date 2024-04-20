import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/Rentalwork.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RentalHome extends StatefulWidget {
  const RentalHome({super.key});

  @override
  State<RentalHome> createState() => _RentalHomeState();
}

class _RentalHomeState extends State<RentalHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading:  IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        shadowColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text('HOME',style: GoogleFonts.poppins(textStyle:TextStyle(fontWeight: FontWeight.w600 )),),
        ),
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('Rental',style: GoogleFonts.inter(textStyle:TextStyle(fontWeight: FontWeight.w700,color:Color.fromRGBO(129, 54, 141, 1), )),),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  leading: CircleAvatar(radius: 30,
                  backgroundImage: AssetImage('images/2.jpg')
                  ),
                  title: Text('Rental',style: GoogleFonts.inter(textStyle:TextStyle(fontSize: 14 )),),
                  subtitle:  RatingBar.builder(
                         initialRating: 3,
                         minRating: 1,
                         direction: Axis.horizontal,
                         allowHalfRating: true,
                         itemCount: 5,
                         itemSize: 17,
                         itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                         itemBuilder: (context, _) => Icon(
                           Icons.star,
                           color:Color.fromRGBO(129, 54, 141, 1),
                         ),
                        
                         onRatingUpdate: (rating) {
                           print(rating);
                         },
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RentalWorkAdmin(),));
                        },
                        child: Container(
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(color:Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(50) ),
                          child: Center(child: Text('Choose',style: GoogleFonts.inter(textStyle:TextStyle(color: Colors.white )))),
                        ),
                      )
                );
              },),
            ),
          ),
        ],
      ),   
    );
  }
}