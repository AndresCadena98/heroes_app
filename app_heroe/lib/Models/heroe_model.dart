// To parse this JSON data, do
//
//     final heroe = heroeFromJson(jsonString);

import 'dart:convert';

List<Heroe> heroeFromJson(String str) =>
    List<Heroe>.from(json.decode(str).map((x) => Heroe.fromJson(x)));

String heroeToJson(List<Heroe> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Heroe {
  Heroe({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });

  int id;
  String name;
  String slug;
  Powerstats powerstats;
  Appearance appearance;
  Biography biography;
  Work work;
  Connections connections;
  Images images;

  factory Heroe.fromJson(Map<String, dynamic> json) => Heroe(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        appearance: Appearance.fromJson(json["appearance"]),
        biography: Biography.fromJson(json["biography"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "powerstats": powerstats.toJson(),
        "appearance": appearance.toJson(),
        "biography": biography.toJson(),
        "work": work.toJson(),
        "connections": connections.toJson(),
        "images": images.toJson(),
      };
}

class Appearance {
  Appearance({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  Gender gender;
  String race;
  List<String> height;
  List<String> weight;
  String eyeColor;
  String hairColor;

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: genderValues.map[json["gender"]],
        race: json["race"] == null ? null : json["race"],
        height: List<String>.from(json["height"].map((x) => x)),
        weight: List<String>.from(json["weight"].map((x) => x)),
        eyeColor: json["eyeColor"],
        hairColor: json["hairColor"],
      );

  Map<String, dynamic> toJson() => {
        "gender": genderValues.reverse[gender],
        "race": race == null ? null : race,
        "height": List<dynamic>.from(height.map((x) => x)),
        "weight": List<dynamic>.from(weight.map((x) => x)),
        "eyeColor": eyeColor,
        "hairColor": hairColor,
      };
}

enum Gender { MALE, FEMALE, EMPTY }

final genderValues = EnumValues(
    {"-": Gender.EMPTY, "Female": Gender.FEMALE, "Male": Gender.MALE});

class Biography {
  Biography({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  String fullName;
  AlterEgos alterEgos;
  List<String> aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  Alignment alignment;

  factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["fullName"],
        alterEgos: alterEgosValues.map[json["alterEgos"]],
        aliases: List<String>.from(json["aliases"].map((x) => x)),
        placeOfBirth: json["placeOfBirth"],
        firstAppearance: json["firstAppearance"],
        publisher: json["publisher"],
        alignment: alignmentValues.map[json["alignment"]],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "alterEgos": alterEgosValues.reverse[alterEgos],
        "aliases": List<dynamic>.from(aliases.map((x) => x)),
        "placeOfBirth": placeOfBirth,
        "firstAppearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignmentValues.reverse[alignment],
      };
}

enum Alignment { GOOD }

final alignmentValues = EnumValues({"good": Alignment.GOOD});

enum AlterEgos {
  NO_ALTER_EGOS_FOUND,
  POWER_WOMAN,
  MS_MARVEL_II,
  BATMAN_II_ROBIN
}

final alterEgosValues = EnumValues({
  "Batman II, Robin": AlterEgos.BATMAN_II_ROBIN,
  "Ms Marvel II": AlterEgos.MS_MARVEL_II,
  "No alter egos found.": AlterEgos.NO_ALTER_EGOS_FOUND,
  "Power Woman": AlterEgos.POWER_WOMAN
});

class Connections {
  Connections({
    this.groupAffiliation,
    this.relatives,
  });

  String groupAffiliation;
  String relatives;

  factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation: json["groupAffiliation"],
        relatives: json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "groupAffiliation": groupAffiliation,
        "relatives": relatives,
      };
}

class Images {
  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  String xs;
  String sm;
  String md;
  String lg;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        xs: json["xs"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "xs": xs,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}

class Powerstats {
  Powerstats({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  int intelligence;
  int strength;
  int speed;
  int durability;
  int power;
  int combat;

  factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
      );

  Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
      };
}

class Work {
  Work({
    this.occupation,
    this.base,
  });

  String occupation;
  String base;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"],
        base: json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
