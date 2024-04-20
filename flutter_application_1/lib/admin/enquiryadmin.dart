import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnquiryAdmin extends StatefulWidget {
  const EnquiryAdmin({super.key});

  @override
  State<EnquiryAdmin> createState() => _EnquiryAdminState();
}

class _EnquiryAdminState extends State<EnquiryAdmin> {
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
            'ENQUIRY',
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 200,
                width: 350,
                child: TextFormField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    
                    hintText: 'Type...',
                    hintStyle: GoogleFonts.inter(textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30,top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(color:Color.fromRGBO(129, 54, 141, 1), borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Send',style: GoogleFonts.inter(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15)),)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}