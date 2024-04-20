import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/rentalworkdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class RentalWorkAdmin extends StatefulWidget {
  const RentalWorkAdmin({super.key});

  @override
  State<RentalWorkAdmin> createState() => _RentalWorkAdminState();
}

class _RentalWorkAdminState extends State<RentalWorkAdmin> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
        child: Expanded(
          
          child: GridView.builder
          (
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,), itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,  MaterialPageRoute(builder: (context) => RentalwrkdetAdmin(),));
              },
              child: Image(
                
                image: AssetImage('images/2.jpg')),
            );
          },),
        ),
      ),
    );
  }
}