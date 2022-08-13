import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtaf_project/profile.dart';

import 'First_Look.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ATMF;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('MTAF'),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10.0,),
          Icon(Icons.public),
          SizedBox(width: 20.0),
      ]
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child:  Column(
             // ignore: prefer_const_literals_to_create_immutables
             children: [
               const SizedBox(height: 60,),
               // ignore: prefer_const_constructors
               CircleAvatar(
                 radius: 60.0,
                 // ignore: prefer_const_constructors
                 backgroundImage: NetworkImage(
                   "https://www.kindpng.com/picc/m/33-338711_circle-user-icon-blue-hd-png-download.png"
                 )

              ),
               // ignore: prefer_const_constructors
               Text(
                'User Name',
              ),
              // ignore: prefer_const_constructors
              const SizedBox(height: 60,),
                ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context){
                       return const profile();
                     }
                     )
                    );
                },
                leading: const Icon(Icons.person),
                 title:const Text('Profile'),
                 trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {}, 
                leading: const Icon(Icons.info),
                 title:const Text('FAQ'),
                 trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {}, 
                leading: const Icon(Icons.feed),
                 title:const Text('Feedback'),
                 trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.rate_review), 
                 title:const Text('Rate Us'),
                 trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {}, 
                leading: const Icon(Icons.group_add),
                 title:const Text('Term of Us'),
                 trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {
                   Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context){
                       return const First_Look();
                     }
                     )
                    );
                }, 
                leading: const Icon(Icons.logout),
                 title:const Text('Logout'),
                 trailing: const Icon(Icons.arrow_forward),
              )
            ],
          ) ,
        ),
      ),
      body:  SafeArea(
            child: Column(
              
            ) 
      ),
    );
  }
}