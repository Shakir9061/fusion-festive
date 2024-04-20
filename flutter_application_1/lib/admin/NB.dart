import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/home.dart';
import 'package:flutter_application_1/admin/reg.dart';
import 'package:flutter_application_1/admin/user1.dart';
import 'package:google_fonts/google_fonts.dart';

class Homeadmin extends StatefulWidget {
  const Homeadmin({super.key});

  @override
  State<Homeadmin> createState() => _HomeadminState();
}

class _HomeadminState extends State<Homeadmin> {
  var selectedindex=1;
  void itemselected( int index){
setState(() {
  selectedindex=index;
});
  }
  List pages=[reg(), Homenb1(),user1()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: pages.elementAt(selectedindex),
     
      bottomNavigationBar: BottomNavigationBar(
        
        items:[
        BottomNavigationBarItem(icon:Image(
          height: 30,
          image:
        
         AssetImage('images/reg.png')),label: '' ),
                BottomNavigationBarItem(icon:Image(
                  color: Colors.black,
                          height: 30,

                          image: AssetImage('images/home.png')),label: '' ),
                        BottomNavigationBarItem(icon:Image(
                          height: 30,
                          image: AssetImage('images/user.png')),label: '' )


      ],
      currentIndex: selectedindex,
      onTap: itemselected,
      ),
    );
  }
}