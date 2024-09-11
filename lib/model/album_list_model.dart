// To parse this JSON data, do
//
//     final albumModel = albumModelFromMap(jsonString);

import 'dart:convert';

List<AlbumModel> albumModelFromMap(dynamic str) => List<AlbumModel>.from(json.decode(str as dynamic).map((x) => AlbumModel.fromMap(x)));

String albumModelToMap(List<AlbumModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AlbumModel {
  int? userId;
  int? id;
  String? title;

  AlbumModel({
    this.userId,
    this.id,
    this.title,
  });

  factory AlbumModel.fromMap(Map<String, dynamic> json) => AlbumModel(
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
