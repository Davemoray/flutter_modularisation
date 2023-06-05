import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/profilecontroller.dart';

Container profileCard() {
  ProfileController profileController = Get.put(ProfileController());
  final Profile = profileController.profile;
  return Container(
      width: 400,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
                backgroundColor: Color(0xFF00523F),
                radius: 40,
                child: Text("AZ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Aria Zindaniro",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text("Account Number :", style: TextStyle(fontSize: 15)),
                    SizedBox(width: 10),
                    Text("20144511320",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(width: 5),
                    Icon(
                      Icons.content_copy_outlined,
                      color: Color(0xFF00523F),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ));
}