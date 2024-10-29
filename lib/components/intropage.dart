// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:online_shop/utils/Button.dart';
class Intropage extends StatelessWidget {
  const Intropage({super.key});
   
  //Method to go home Page
  void onFunction(BuildContext context) {
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Theme.of(context).colorScheme.background,
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         //Logo
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: Image.asset('lib/img/logo2.png', 
            width: 300,
            height: 200,
            color: Colors.green.shade600,
            ),
         ),
           const SizedBox(height: 8,),

         //Title
          Text("Welcome to Plantify",style: 
          TextStyle( 
           fontSize: 24, 
           fontWeight: FontWeight.bold),
           ), 
       
      const SizedBox(height: 10,),

         //subtitle
         Text("Fresh Plants Delivered to Your Doorstep",style: 
          TextStyle(  
           color: Theme.of(context).colorScheme.primary),
           ),
       
       const SizedBox(height: 10,),
         //Button
          MyButton(
            onTap: (){Navigator.pushNamed(context, '/HomePage');
            },
           child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
            )
        ],
        ),
     )
       
    );
  }
}