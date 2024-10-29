// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:online_shop/components/home_page.dart';
import 'package:online_shop/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //Logo
              DrawerHeader(
                  child: Center(
                child: Image.asset(
                  'lib/img/logo2.png',
                  width: 300,
                  height: 200,
                  color: Colors.green.shade600,
                ),
              )),
              const SizedBox(
                height: 20,
              ),

              //shop title
              MyListTile(
                icon: Icons.shop,
                TileName: "Shop",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace ShopPage with your actual shop page widget
                ),
              ),

              //cart title
              MyListTile(
                  icon: Icons.shopping_bag,
                  TileName: "Cart",
                  onTap: () => {
                        //pop the drawer first
                        Navigator.pop(context),

                        //Then go to Cart Page
                        Navigator.pushNamed(context, '/cart_page')
                      }),
            ],
          ),

          //exit the app
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: MyListTile(
                icon: Icons.exit_to_app, TileName: "Exit",
                 onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page',(route) => false 
                  )),
          )
        ],
      ),
    );
  }
}
