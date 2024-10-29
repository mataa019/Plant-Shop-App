// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  void Function()? onTap;
  MyButton({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(25),
             decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 129, 61),
              borderRadius: BorderRadius.circular(20)),
            child: child,
        ),
      ),
    );
  }
}
