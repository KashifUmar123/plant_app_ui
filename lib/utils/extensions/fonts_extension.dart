import 'package:flutter/material.dart';

extension Fonts on BuildContext {
  TextStyle get text10400 => Theme.of(this).textTheme.bodySmall!;
  TextStyle get text14400 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get text16400 => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get text30400 => Theme.of(this).textTheme.displayLarge!;
}
