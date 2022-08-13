import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtaf_project/sigin_page.dart';

import 'Login_page.dart';


class First_Look extends StatelessWidget {
  const First_Look({ Key? key }) : super(key: key);

  get style => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(             
              children:[
               Container(             
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                 height: 350.0,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     image: NetworkImage(
                      'https://scontent.xx.fbcdn.net/v/t1.15752-9/282297008_846135956346257_1565035876145930066_n.png?_nc_cat=106&ccb=1-7&_nc_sid=aee45a&_nc_eui2=AeENmm-T8RsbQJL9ZxX0XyA4NQBIzM9iLWA1AEjMz2ItYMe2VCP5V5fOhrAOX4YoPULiXflDidc_iUsBPxK7phmY&_nc_ohc=L5avAOTKZ2sAX-uhu8E&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVJk1qHL7fUEY96n5k-AAD-PHUIfmyoLDebr4shx3X9Msw&oe=63120C5C',
                     )
                   )
                 ),
               ),
                  const Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                  ),
                ),
                const Text(
                  "ATMF",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60,
                  ),
                ),
               const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton.filled(
              onPressed: () {
                 
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context){
                       return const Login_page();
                     }
                     )
                    );
              }, 
              child: const Text('Login'),
            ),
             
            CupertinoButton.filled(
              onPressed: () {
                Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context){
                       return const sigin_page();
                     }
                     )
                    );
              },
              child: const Text('Sigin'),
            ),
              ],
            )

              ],
            ),
          )
       ), 
    ),
     
    );
  }
}