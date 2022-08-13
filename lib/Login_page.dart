// ignore_for_file: unnecessary_string_escapes, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'First_Look.dart';
import 'Homepage.dart';


class Login_page extends StatelessWidget {
  const Login_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Scaffold(
        body: SafeArea(
        child : Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
          children: [
            Image.network('https://www.kindpng.com/picc/m/33-338711_circle-user-icon-blue-hd-png-download.png'),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
               ),
            ),
           const TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: "Password",
              ),
           ),
            FlatButton(
              onPressed: () {  },
              child: const Text(
              'Forget Password',
              style: TextStyle(color: Colors.blue),
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton.filled(
              onPressed: () {
                Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context){
                       return const Homepage();
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
                       return const First_Look();
                     }
                     )
                    );
              },
              child: const Text('Back'),
            ),
              ],
            ) 
          ]
         ),
        )
       )
       )
    );
  }
}