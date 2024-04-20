import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/admin/elegantwork.dart';
import 'package:flutter_application_1/admin/home.dart';
import 'package:flutter_application_1/admin/reg.dart';
import 'package:flutter_application_1/admin/user1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Elegant extends StatefulWidget {
  const Elegant({super.key});

  @override
  State<Elegant> createState() => _ElegantState();
}

class _ElegantState extends State<Elegant> {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        shadowColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text('DESIGNERS',style: GoogleFonts.inter(textStyle:TextStyle(fontWeight: FontWeight.w700,color: Color.fromRGBO(129, 54, 141, 1), )),),
        ),
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('Elegant Fashion Creation',style: GoogleFonts.inter(textStyle:TextStyle(fontWeight: FontWeight.w700,color:Color.fromRGBO(129, 54, 141, 1), )),),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  leading: Image(image: AssetImage('images/elegant.jpg')),
                  title: Text('Elegant Fashion Creation',style: GoogleFonts.inter(textStyle:TextStyle(fontSize: 14 )),),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>ElegantWorkAdmin() ,));
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