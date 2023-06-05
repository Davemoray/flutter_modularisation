import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/buttomnavigationbar.dart';
import 'components/displaytile.dart';
import 'components/profilecard.dart';
import 'controller/profilecontroller.dart';
import 'model/profile.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  ProfileController profileController =Get.put(ProfileController());
  @override
  // void initState(){
  //   super.initState();
  //   profileController.fetchProfile();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),

              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[

                  Text("Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(Icons.settings),
                ],
              ),
              profileCard(),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),
                    ),
                    context: context,
                    builder: (context) =>
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.8,
                          minHeight: MediaQuery.of(context).size.height * 0.5,
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left:15.0, right:15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 50.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const <Widget>[

                                  Text(
                                    "Profile",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text("Edit", style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              const SizedBox(height:10),
                              profileCard(),
                              const SizedBox(height:20),
                              const Text("Personal Information", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(height:20.0),

                              Center(
                                child: FutureBuilder<List<ProfileModel>>(
                                  future: profileController.fetchProfile(),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState == ConnectionState.waiting) {
                                      return Center(child: CircularProgressIndicator());
                                    } else if (snapshot.hasError) {
                                      return Center(child: Text('Error: ${snapshot.error}'));
                                    } else if (snapshot.hasData) {
                                      final profiles = snapshot.data!;

                                      return ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: profiles.length,
                                        itemBuilder: (context, index) {
                                          final profile = profiles[index];

                                          return ListTile(
                                            leading: Text("Name:"),
                                            title: Text(profile.name),
                                          );
                                        },
                                      );
                                    } else {
                                      return Center(child: Text('No data available'));
                                    }
                                  },
                                )
                              ),

                            ],
                          ),
                        ),
                      ),

                  );
                },
                child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xFF00523F))),
                    child: const Center(
                        child: Text("View Profile Details",
                            style: TextStyle(
                                color: Color(0xFF00523F),
                                fontWeight: FontWeight.bold)))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("General",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              displayTile(const Icon(Icons.phone_callback_outlined),
                  "Codabank Contact", const Icon(Icons.navigate_next)),
              const SizedBox(height: 20),
              const Text("Help Center",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              displayTile(const Icon(Icons.help), "Codabank Help",
                  const Icon(Icons.navigate_next)),
              const SizedBox(height: 20),
              displayTile(const Icon(Icons.location_on_rounded), "Find us",
                  const Icon(Icons.navigate_next)),
              const SizedBox(height: 20),
              displayTile(const Icon(Icons.info_outline), "About Codabank",
                  const Icon(Icons.navigate_next)),
            ],
          ),
        ),
      ),
    );
  }
}

buildModalSheet() {

}
