import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/admin/servicetab.dart';
import 'package:flutter_application_1/admin/worktab.dart';
import 'package:google_fonts/google_fonts.dart';

class ElegantWorkAdmin extends StatefulWidget {
  const ElegantWorkAdmin({super.key});

  @override
  State<ElegantWorkAdmin> createState() => _ElegantWorkAdminState();
}

class _ElegantWorkAdminState extends State<ElegantWorkAdmin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              'WORKS',
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
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TabBar(
                tabs: [
                  Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(129, 54, 141, 1),
                      ),
                      child: Tab(
                        text: 'Service',
                      )),
                  Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
            
                        color: Color.fromRGBO(129, 54, 141, 1),
                      ),
                      child: Tab(
                        text: 'Work',
                      ))
                ],
                indicator: BoxDecoration(),
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(child: TabBarView(children: [serviceTabadmin(),WorkTabadmin()]))
          ],
        ),
        
      ),
    );
  }
}
