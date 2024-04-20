import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/mehandiwrkdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class mehandiWorkadmin extends StatefulWidget {
  const mehandiWorkadmin({super.key});

  @override
  State<mehandiWorkadmin> createState() => _mehandiWorkadminState();
}

class _mehandiWorkadminState extends State<mehandiWorkadmin> {
   final List mehandi_img = [
    'images/me1.jpg',
    'images/me2.jpg',
    'images/me2.jpg',
        'images/me1.jpg',
        'images/me1.jpg',
    'images/me2.jpg',

  ];
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,crossAxisSpacing: 3,mainAxisSpacing: 3), itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                 if (index == 1||index==2||index==5) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MehandiwrkdetAdmin(),
                  ),
                );
              }
              },
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(mehandi_img[index])),
            );
          },),
        ),
      ),
    );
  }
}