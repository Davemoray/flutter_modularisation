import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

displayTile(Widget startIcon, String description, Widget trailingIcon) {
  return Container(
    width: 400,
    height: 80,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5)),
              height: 60,
              width: 55,
              child: startIcon,
            ),
            const SizedBox(width: 50),
            Text(
              description,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 60),
            trailingIcon,
          ],
        ),
      ),
    ),
  );
}