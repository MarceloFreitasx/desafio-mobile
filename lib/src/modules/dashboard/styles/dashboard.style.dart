import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';

class DashboardStyle {
  static final CATEGORY_TITLE = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: "Neusa",
  );

  static final PRODUCT_TITLE = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w300,
    fontFamily: "Neusa",
  );

  static final PRODUCT_PRICE = TextStyle(
    fontSize: 12,
    color: AppColors.productPriceColor,
    fontWeight: FontWeight.bold,
    fontFamily: "Neusa",
  );
}
