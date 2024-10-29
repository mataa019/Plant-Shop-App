// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:online_shop/models/product_data.dart';
import 'package:online_shop/models/shop_list.dart';
import 'package:online_shop/utils/Button.dart';
import 'package:online_shop/utils/my_drawer.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //Function for a Button Payments
  void PayButtonFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Connect the App to your Payment Gateway"),
        actions: const [
          //NO TO PAYMENTS

          //YES TO PAYMENTS
        ],
      ),
    );
  }

  //Method to removeCard
  void RemoveFromCard(BuildContext context, ProductData product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Do you want to remove this item from your Cart List?"),
              actions: [
                //NO
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),

                //YES
                MaterialButton(
                  onPressed: () {
                    //pop out first
                    Navigator.pop(context);
                    //remove from the cart
                    context.read<ShopList>().removeProduct(product);
                  },
                  child: Text("Yes"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    //Get access to cart
    final Cart = context.watch<ShopList>().CartPage;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 1,
        title: Text('Cart Available'),
        backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(),
      
      body: Column(
        children: [
          //Cart List
          Expanded(
              child: Cart.isEmpty
                  ? Center(
                      child: Text(
                      "The Cart List is Empty",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ))
                  : ListView.builder(
                      itemCount: Cart.length,
                      itemBuilder: (context, index) {
                        //Get individual Items in the Cart
                        final Item = Cart[index];

                        //Return as a ListView
                        return Card(
                          color: Colors.green.shade50, 
                          elevation: 3, 
                          
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: Image.asset(Item.imageUrl),
                            title: Text(
                              Item.name,
                              style: TextStyle(
                                color: Colors.green.shade900, // Dark green text color for the title
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                             subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Item.description,
                                  style: TextStyle(
                                    color: Colors.green.shade700, 
                                  ),
                                ),
                                SizedBox(height: 5), 
                                
                                Text(
                                  'K${Item.price}', 
                                  style: TextStyle(
                                    color: Colors.green.shade900, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                             
                            trailing: IconButton(
                              icon: Icon(Icons.remove, color: Colors.green.shade900), // Dark green icon color
                              onPressed: () => RemoveFromCard(context, Item),
                            ),
                          ),
                        );
                      })),

          //Purchase Button

          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(
              child: Text(
                "PAY NOW",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => PayButtonFunction(context),
            ),
          )
        ],
      ),
    );
  }
}