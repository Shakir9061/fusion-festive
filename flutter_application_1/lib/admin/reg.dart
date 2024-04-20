import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/admin/NB.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  final List img = [
    'images/b1.jpg',
    'images/4.png',
    'images/b4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homeadmin(),
                  ));
            },
          ),
          shadowColor: Colors.grey,
          title: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text(
              'BOOKING',
              style: GoogleFonts.inter(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10,top:30),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(img[index]),
                     
                    ),
                    title: Text(
                      'Elegant Fashion Creation',
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14)),
                    ),
                    subtitle: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 17,
                      itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color.fromRGBO(129, 54, 141, 1),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    trailing: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(129, 54, 141, 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text('View',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(color: Colors.white)))),
                      ),
                    ));
              },
            ),
          ),
        ));
  }
}
