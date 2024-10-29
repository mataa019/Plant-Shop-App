// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String TileName;
  void Function()? onTap;

   MyListTile({super.key, required this.icon, required this.TileName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: ListTile(
        leading: Icon(
          icon,
         color: Colors.green.shade400,
        ),
        title: Text(TileName,),
        onTap: onTap,
      ),
    );
  }
}
