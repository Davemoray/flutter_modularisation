import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

profileTiles(String index, String description) {
  return Container(
    width: 400,
    height: 80,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(index, style:(TextStyle(fontSize:20, fontWeight:FontWeight.bold))),
            Text(
              description,
              style: const TextStyle(fontSize: 15),
            ),

          ],
        ),
      ),
    ),
  );
}