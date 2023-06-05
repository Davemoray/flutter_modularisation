import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/login_interface.dart';
import 'package:login/logincontroller.dart';
import 'package:profile/profile.dart';

class Login extends StatelessWidget {
   TextEditingController emailController = TextEditingController();
   TextEditingController pinController = TextEditingController();

  final LoginInterface loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF00523F),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 200),
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelStyle: const TextStyle(color: Colors.white),
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    print("your customer_ID is:");
                  },
                ),
                const SizedBox(height: 60),
                TextFormField(
                  controller: pinController,
                  decoration: InputDecoration(labelStyle: const TextStyle(color: Colors.white),
                      labelText: 'Enter your pin',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your pin";
                    }
                    return null;
                  },
                  // onSaved: (value) {
                  //   print("your customer_ID is:");
                  // },
                ),
                const SizedBox(height: 100,),
                ElevatedButton(
                  onPressed: ()async {
                    bool loggedIn = true;
                    //bool loggedIn = await loginController.login(emailController.value.text, pinController.value.text);
                    if(loggedIn == true){
                     Navigator.push(context, MaterialPageRoute(builder:(context) => Profile()));
                    }
                    Get.snackbar("Failed Login", "Invalid login credentials, lease try again.");
                  },
                  child: Container(
                      width: 400,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white)),
                      child: const Center(
                          child: Text("Login",
                              style: TextStyle(
                                  color: Color(0xFF00523F),
                                  fontWeight: FontWeight.bold)))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
