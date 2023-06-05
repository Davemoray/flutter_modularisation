import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../model/profile.dart';

class ProfileController extends GetxController {
  final profile = <ProfileModel>[].obs;

  Future<List<ProfileModel>> fetchProfile() async {
    try{
      var url = Uri.parse('https://swapi.dev/api/people/1/');
      final response = await http.get(url, headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode == 200) {
        final Map<String,dynamic> result =json.decode(response.body);
        final data = ProfileModel.fromJson(result);
        profile.value = [data];
        return [data];
      }  else { throw Exception("There was an error fetching your data");
      }}catch(e){throw Exception("There was an error fetching your data");}
  }
}



