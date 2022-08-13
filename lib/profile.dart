// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
           title: const Text(
             'Profile',
           ),
           centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Image.network('https://www.kindpng.com/picc/m/33-338711_circle-user-icon-blue-hd-png-download.png'),
            ),
            Container(
               child: const TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Email",
                  ),
               )
            ),
           Container(
               child: const TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Password",
                  ),
               )
            ),
            Container(
              // ignore: prefer_const_constructors
              child: FlatButton(
                onPressed: () {  },
                child: const Text(
                'Forget Password',
                style: TextStyle(color: Colors.blue),
              ),),
            ),
             Container(
              // ignore: prefer_const_constructors
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {  },
                child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),),
            ) 
          ]
        )
    );
  }
}