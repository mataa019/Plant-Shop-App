// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:online_shop/components/cart_page.dart';
import 'package:online_shop/models/product_data.dart';

class ShopList extends ChangeNotifier {
  //product for sell
  final List<ProductData> _shopList = [
    ProductData(
      name: 'Snake Plant',
      description: 'A hardy indoor plant that requires minimal care.',
      price: 19.99,
      imageUrl: 'lib/img/snake plant.png',
    ),
    ProductData(
      name: 'Peace Lily',
      description: 'A beautiful plant with white flowers.',
      price: 24.99,
      imageUrl: 'lib/img/Peace lily.png',
    ),
     ProductData(
      name: 'Orchid',
      description: 'An elegant flowering plant with delicate blooms.',
      price: 34.99,
      imageUrl: 'lib/img/Orchid.png',
    ),
    ProductData(
      name: 'Aloe Vera',
      description: 'A succulent plant known for its medicinal properties.',
      price: 15.99,
      imageUrl: 'lib/img/Aloe Vera.png',
    ),
    ProductData(
      name: 'Rose Bush',
      description: 'A classic flowering plant with beautiful blooms.',
      price: 29.99,
      imageUrl: 'lib/img/Rose_Bush.png',
    ),
   
    
  ];

  //user cart
  final List<ProductData> _cart = [];

  //Get the product list
  List<ProductData> get Shop_list => _shopList;

  //Get cart list
  List<ProductData> get CartPage => _cart;
  //add a cart list
  void addProduct(ProductData Item) {
    _cart.add(Item);
    notifyListeners();
  }

  //remove the cart
  void removeProduct(ProductData Item) {
    _cart.remove(Item);
    notifyListeners();
  }
}
