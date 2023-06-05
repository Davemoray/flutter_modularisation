import 'dart:convert';

// UserProfile profileFromJson(String str) =>
//     UserProfile.fromJson(json.decode(str));
//
// String profileToJson(UserProfile data) => json.encode(data.toJson());

// class ProfileModel {
//   ProfileModel({
//     required this.assets,
//   });
//
//   List<Assets>? assets;
//
//   ProfileModel.fromJson(Map<String, dynamic> json) {
//     if (json != null){
//       assets = <Assets>[];
//       json.forEach((key, value) {
//         assets!.add(Assets.fromJson(json));
//         print (assets);
//       });
//       //json.forEach((e) => assets!.add(new Assets.fromJson(e)));
//     }
//    // assets = List.from(json['assets']).map((e) => Assets.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> assets = new Map<String,dynamic>();
//     if (this.assets != null){
//       assets['assets'] = this.assets!.map((e) => e.toJson()).toList();
//     }
//
//
//     // final _data = <String, dynamic>{};
//     // _data['assets'] = assets!.map((e) => e.toJson()).toList();
//     return assets;
//   }
// }


class ProfileModel {
  ProfileModel({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String homeworld;
  List<String> films;
  List<String> species;
  List<dynamic> vehicles;
  List<dynamic> starships;
  DateTime created;
  DateTime edited;
  String url;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json["name"],
        height: json["height"],
        mass: json["mass"],
        hairColor: json["hair_color"],
        skinColor: json["skin_color"],
        eyeColor: json["eye_color"],
        birthYear: json["birth_year"],
        gender: json["gender"],
        homeworld: json["homeworld"],
        films: List<String>.from(json["films"].map((x) => x)),
        species: List<String>.from(json["species"].map((x) => x)),
        vehicles: List<dynamic>.from(json["vehicles"].map((x) => x)),
        starships: List<dynamic>.from(json["starships"].map((x) => x)),
        created: DateTime.parse(json["created"]),
        edited: DateTime.parse(json["edited"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "height": height,
        "mass": mass,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "eye_color": eyeColor,
        "birth_year": birthYear,
        "gender": gender,
        "homeworld": homeworld,
        "films": List<dynamic>.from(films.map((x) => x)),
        "species": List<dynamic>.from(species.map((x) => x)),
        "vehicles": List<dynamic>.from(vehicles.map((x) => x)),
        "starships": List<dynamic>.from(starships.map((x) => x)),
        "created": created.toIso8601String(),
        "edited": edited.toIso8601String(),
        "url": url,
      };
}
