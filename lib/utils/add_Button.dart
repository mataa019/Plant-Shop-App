// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Widget child;
  void Function()? onTap;
  AddButton({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.green.shade700,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
          ),
          child: child,
        ),
      ),
    );
  }
}
