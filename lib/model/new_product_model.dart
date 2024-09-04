/*class NewProductModel {
  String? img;
  String? title;
  String? price;
  String? id;

  NewProductModel({this.img, this.title, this.price, this.id});

  NewProductModel.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
    price = json['price'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    data['price'] = this.price;
    data['id'] = this.id;
    return data;
  }
}*/
import 'dart:convert';

List<NewProductModel> newProductModelFromMap(dynamic str) =>
    List<NewProductModel>.from((str as dynamic).map((x) =>
        NewProductModel.fromMap(x)));

String newProductModelToMap(List<NewProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class NewProductModel {
  String? img;
  String? title;
  String? price;
  String? id;
  NewProductModel({
    this.img,
    this.title,
    this.price,
    this.id,
  });

  factory NewProductModel.fromMap(Map<String, dynamic> json) => NewProductModel(
    img: json["img"],
    title: json["title"],
    price: json["price"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "img": img,
    "title": title,
    "price": price,
    "id": id,
  };
}