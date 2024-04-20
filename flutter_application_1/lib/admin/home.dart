import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/Rentalhome.dart';
import 'package:flutter_application_1/admin/elegant.dart';
import 'package:flutter_application_1/admin/mehandihome.dart';
import 'package:google_fonts/google_fonts.dart';

class Homenb1 extends StatefulWidget {
  const Homenb1({super.key});

  @override
  State<Homenb1> createState() => _Homenb1State();
}

class _Homenb1State extends State<Homenb1> {
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
       body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Elegant(),));
          },
          contentPadding: EdgeInsets.symmetric(vertical: 50),
          leading: Padding(
            padding: const EdgeInsets.only(left:80),
            child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/1.jpg'),
                ),
                
          ) ,
          title: Text('Elegant Fashion creation'),
         ),
          ListTile(
             onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RentalHome(),));
          },
          contentPadding: EdgeInsets.symmetric(vertical: 50),
          leading: Padding(
            padding: const EdgeInsets.only(left:80),
            child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/2.jpg'),
                ),
                
          ) ,
          title: Text('Rental'),
         ),
          ListTile(
             onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MehandiHomeadmin(),));
          },
          contentPadding: EdgeInsets.symmetric(vertical: 50),
          leading: Padding(
            padding: const EdgeInsets.only(left:80),
            child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/3.png'),
                ),
                
          ) ,
          title: Text('Mehandi'),
         ),
          ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 50),
          leading: Padding(
            padding: const EdgeInsets.only(left:80),
            child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/4.png'),
                ),
                
          ) ,
          title: Text('Makeup'),
         ),
        ],
      ),
    );
  }
}