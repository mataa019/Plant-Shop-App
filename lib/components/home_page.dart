// ignore_for_file: deprecated_member_use, non_constant_identifier_names, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/models/shop_list.dart';
import 'package:online_shop/utils/my_drawer.dart';
import 'package:online_shop/components/product_tile_designCard.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //access the productData

    final ProductData = context.watch<ShopList>().Shop_list;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 1,
          title: Center(child: const Text('Plant Shop')),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart_page');
                },
                icon: Icon(Icons.shopping_cart_outlined
                ))
          ],
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            //shop descriptive
            Center(
                child: Text(
              "BUY ONLINE YOUR FAVORITE PLANTS",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),

            //Product List Cards

            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: ProductData.length,
                  padding: EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //Get the product data from Shop_List
                    final Product = ProductData[index];

                    //Return the product_tile_designCard
                    return ProductTileDesignCard(product: Product);
                  }),
            ),
          ],
        ));
  }
}
