// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

But030119014 welcomeFromJson(String str) =>
    But030119014.fromJson(json.decode(str));

String welcomeToJson(But030119014 data) => json.encode(data.toJson());

class But030119014 {
  String isim;
  String okuladi;
  int ogrenciNo;
  List<String> permissions;

  But030119014({
    required this.isim,
    required this.okuladi,
    required this.ogrenciNo,
    required this.permissions,
  });

  factory But030119014.fromJson(Map<String, dynamic> json) => But030119014(
        isim: json["isim"],
        okuladi: json["okuladi"],
        ogrenciNo: json["OgrenciNo"],
        permissions: List<String>.from(json["permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "isim": isim,
        "okuladi": okuladi,
        "OgrenciNo": ogrenciNo,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
      };
}
