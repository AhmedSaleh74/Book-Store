import 'package:flutter/material.dart';

abstract class TextStyles {
  //Regular
  static const TextStyle font18Regular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle font20Regular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle font14Regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  //Medium
  static const TextStyle font18Medium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font16Medium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  //SemiBold
  static const TextStyle font18SemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  //Bold
  static const TextStyle font18Bold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
