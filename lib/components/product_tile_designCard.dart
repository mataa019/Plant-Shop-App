// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_shop/models/product_data.dart';
import 'package:online_shop/models/shop_list.dart';
import 'package:online_shop/utils/add_Button.dart';
import 'package:provider/provider.dart';

class ProductTileDesignCard extends StatelessWidget {
  final ProductData product;
  const ProductTileDesignCard({super.key, required this.product});

  void addToCard(BuildContext context) {
    //Show the dialog Window to the user
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Add this Iterm to your Cart List"),
              actions: [
              //NO
                MaterialButton(
                  onPressed: ()=> Navigator.pop(context),
                   child: Text("Cance"),     
                      ),
                
              //YES
              MaterialButton(
                  onPressed: (){
                    //pop out first
                    Navigator.pop(context);
                    //add to the cartMethod
                    context.read<ShopList>().addProduct(product);     
                  },
                        child: Text("Yes"),
                      ),
                
              ],
              
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 218, 228, 218),
          borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(10),
      width: 300,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // product image
              ClipRRect(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15))),
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              //product Name
              Text(
                product.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 10,
              ),

              //product descriptive
              Text(product.description),
            ],
          ),

          //product price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( '\K${product.price.toStringAsFixed(2)}',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              //Button
              AddButton(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onTap: () => addToCard(context),
              ),
            ],
          )

          //add button
        ],
      ),
    );
  }
}
