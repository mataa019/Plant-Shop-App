// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/components/cart_page.dart';
import 'package:online_shop/components/home_page.dart';
import 'package:online_shop/components/intropage.dart';
import 'package:online_shop/models/shop_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> ShopList(),
                       child: const MyApp(),
                       ));
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Intropage(),
      routes: {
        '/HomePage': (context) => HomePage(),
        '/cart_page':(context) => CartPage(),
        '/intro_page':(context) => Intropage(),
      },

     
    );
  }
}

