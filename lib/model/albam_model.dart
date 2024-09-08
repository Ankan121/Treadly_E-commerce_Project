// To parse this JSON data, do
//
//     final album = albumFromMap(jsonString);

import 'dart:convert';

Album albumFromMap(dynamic str) => Album.fromMap(json.decode(str as dynamic));

String albumToMap(Album data) => json.encode(data.toMap());

class Album {
  int? userId;
  int? id;
  String? title;

  Album({
    this.userId,
    this.id,
    this.title,
  });

  factory Album.fromMap(Map<String, dynamic> json) => Album(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
