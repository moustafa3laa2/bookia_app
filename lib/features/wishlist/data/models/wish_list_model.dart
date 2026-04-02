class ShowWishlistModel {
  List<WishlistItem>? data;
  String? message;
  List<dynamic>? error;
  int? status;

  ShowWishlistModel({this.data, this.message, this.error, this.status});

  ShowWishlistModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <WishlistItem>[];
      json['data'].forEach((v) {
        data!.add(WishlistItem.fromJson(v));
      });
    }
    message = json['message'];
    error = json['error'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataMap = {};
    if (data != null) {
      dataMap['data'] = data!.map((v) => v.toJson()).toList();
    }
    dataMap['message'] = message;
    dataMap['error'] = error;
    dataMap['status'] = status;
    return dataMap;
  }
}

class WishlistItem {
  int? id;
  String? name;
  String? price;
  String? categoryName;
  String? image;

  WishlistItem({
    this.id,
    this.name,
    this.price,
    this.categoryName,
    this.image,
  });

  WishlistItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    categoryName = json['category_name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataMap = {};
    dataMap['id'] = id;
    dataMap['name'] = name;
    dataMap['price'] = price;
    dataMap['category_name'] = categoryName;
    dataMap['image'] = image;
    return dataMap;
  }
}