class NewProductModel {
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
}
