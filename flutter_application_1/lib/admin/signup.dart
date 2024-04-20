import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/admin/NB.dart';
import 'package:google_fonts/google_fonts.dart';

class Signupadmin extends StatefulWidget {
  const Signupadmin({super.key});

  @override
  State<Signupadmin> createState() => _SignupadminState();
}

class _SignupadminState extends State<Signupadmin> {
  var selectedvalue='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [CircleAvatar(
                  radius: 50,
                ),
                Icon(Icons.add,size: 35,)
         ] ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Add Your Photo', style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          )),),
          ),
          Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 30),
                      child: Text(
                        'Username',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                filled: true,
                                fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65,top: 10),
                      child: Text('Gender',style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        child: RadioListTile(
                          title: Text('Male'),
                          value: 'Male', groupValue: selectedvalue, onChanged: (value) {
                            setState(() {
                                                        selectedvalue=value!;

                            });
                        },),
                      ),
                        SizedBox(
                    height: 30,
                    child: RadioListTile(
                      title: Text('Female'),
                      value: 'Female', groupValue: selectedvalue, onChanged: (value) {
                        setState(() {
                                                selectedvalue=value!;

                        });
                    },),
                  ),
                   SizedBox(
                    height: 30,
                    child: RadioListTile(
                      title: Text('Others'),
                      value: 'Others', groupValue: selectedvalue, onChanged: (value) {
                        setState(() {
                                                selectedvalue=value!;

                        });
                    },),
                  )
                    ],
                  ),
                ),
               Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 30),
                      child: Text(
                        'Email',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                filled: true,
                                fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                    ),
                  ],
                ),
                  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 20),
                      child: Text(
                        'Phone No',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                filled: true,
                                fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                    ),
                  ],
                ),
                  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top:20),
                      child: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                filled: true,
                                fillColor: Color.fromRGBO(180, 151, 181, 0.63),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                    ),
                  ],
                ), 
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: InkWell(
                    onTap: () {
                                                              Navigator.push(context, MaterialPageRoute(builder: (context) => Homeadmin(),));

                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(color:  Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Sign Up',style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),))),
                  ),
                )
        ],
      )),
    );
  }
}