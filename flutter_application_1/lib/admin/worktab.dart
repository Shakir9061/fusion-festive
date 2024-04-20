import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/wrkdet.dart';

class WorkTabadmin extends StatefulWidget {
  const WorkTabadmin({super.key});

  @override
  State<WorkTabadmin> createState() => _WorkTabadminState();
}

class _WorkTabadminState extends State<WorkTabadmin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  height: 220,
                  
                  image: AssetImage('images/w1.jpg')),
                   InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDetAdmin(),));
                    },
                     child: Image(
                                       height: 220,
                                       
                                       image: AssetImage('images/w2.jpg')),
                   ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                   onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDetAdmin(),));
                    },
                  child: Image(
                    height: 220,
                    
                    image: AssetImage('images/w2.jpg')),
                ),
                   Image(
                  height: 220,
                  
                  image: AssetImage('images/w1.jpg')),
              ],
            ),
          ),
        ],
      )
    );
  }
}