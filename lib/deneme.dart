import 'dart:developer';

import 'package:flutter/material.dart';

class Deneme extends StatelessWidget {
  final String denemeyazisi;
  Deneme({super.key, required this.denemeyazisi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(
          15), //margin :konteyner ile komşular arası boşluk  //padding:iç boşluk   //border:kenar boşluk
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.blue.shade900,
          border: Border.all(color: Colors.green, width: 10)),

      child: Text(
        denemeyazisi,
        style: TextStyle(
            fontSize: 22, color: Colors.yellow, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
}
