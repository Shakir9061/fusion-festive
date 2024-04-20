import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/NB.dart';
import 'package:flutter_application_1/admin/home.dart';
import 'package:google_fonts/google_fonts.dart';

class user1 extends StatefulWidget {
  const user1({super.key});

  @override
  State<user1> createState() => _user1State();
}

class _user1State extends State<user1> {
    var selectedvalue='';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading:  IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homeadmin(),));
        },
        ),
        shadowColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text('PROFILE',style: GoogleFonts.poppins(textStyle:TextStyle(fontWeight: FontWeight.w600 )),),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
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
              child: Text('Add Your Photo', style: GoogleFonts.inter(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),),
            ),
            Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 20),
                        child: Text(
                          'Username',
                          style: GoogleFonts.inter(
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
                        child: Text('Gender',style: GoogleFonts.inter(
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
                        padding: const EdgeInsets.only(left: 65, top: 20),
                        child: Text(
                          'Email',
                          style: GoogleFonts.inter(
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
                        padding: const EdgeInsets.only(left: 65, top: 10),
                        child: Text(
                          'Phone No',
                          style: GoogleFonts.inter(
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
                        padding: const EdgeInsets.only(left: 65, top:10),
                        child: Text(
                          'Password',
                          style: GoogleFonts.inter(
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
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: () {
        
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(color:  Color.fromRGBO(129, 54, 141, 1),borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text('Sign Up',style: GoogleFonts.inter(textStyle:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),))),
                    ),
                  )
          ],
        )),
      ),
    );
  }
}