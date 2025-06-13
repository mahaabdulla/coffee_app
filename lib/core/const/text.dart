import 'package:coffee_app/core/const/fontweight.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

//const String appFont = 'appFont';

abstract class TextStyles {
  static const TextStyle headLine32 = TextStyle(
    // fontFamily: appFont,
    fontSize: 32,
    fontWeight: FontWeights.bold,
    color: Colors.white,
  );

  static const TextStyle headLine20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeights.bold,
    color: blacTextColor,
  );
  static const TextStyle headLine18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeights.light,
    color: blacTextColor,
  );
  static const TextStyle headLine16 = TextStyle(
    // fontFamily: appFont,
    fontSize: 16,
    fontWeight: FontWeights.light,
    color: Colors.white,
  );
  static const TextStyle headLine16Blca = TextStyle(
    // fontFamily: appFont,
    fontSize: 16,
    fontWeight: FontWeights.light,
    color: Colors.white,
  );
  static const TextStyle headLine14 = TextStyle(
    // fontFamily: appFont,
    fontSize: 14,
    fontWeight: FontWeights.bold,
    color: Colors.white,
  );
  static const TextStyle headLine12 = TextStyle(
    // fontFamily: appFont,
    fontSize: 14,
    fontWeight: FontWeights.light,
    color: Colors.white,
  );
}
