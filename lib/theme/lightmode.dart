// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: const Color.fromARGB(255, 218, 228, 218), // Natural green
    secondary: Colors.brown.shade300, // Earthy brown
    inversePrimary: Colors.green.shade900, // Darker green for contrast
    background: Colors.green.shade50, // Soft light green
    surface: Colors.white, // White for surfaces like cards
    onPrimary: Colors.white, // Text color on primary color
    onSecondary: Colors.white, // Text color on secondary color
    onBackground: Colors.black, // Text color on background
    onSurface: Colors.black, // Text color on surfaces
  ),

);

