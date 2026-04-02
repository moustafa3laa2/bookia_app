class ShowBookDetailsModel {
  final BookData? data;
  final String? message;
  final List<dynamic>? error;
  final int? status;

  ShowBookDetailsModel({
    this.data,
    this.message,
    this.error,
    this.status,
  });

  factory ShowBookDetailsModel.fromJson(Map<String, dynamic> json) {
    return ShowBookDetailsModel(
      data: json['data'] != null ? BookData.fromJson(json['data']) : null,
      message: json['message'],
      error: json['error'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
      'message': message,
      'error': error,
      'status': status,
    };
  }
}

class BookData {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final int? stock;
  final int? discount;
  final double? priceAfterDiscount;
  final String? image;
  final String? category;
  final String? special;

  BookData({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.discount,
    this.priceAfterDiscount,
    this.image,
    this.category,
    this.special,
  });

  factory BookData.fromJson(Map<String, dynamic> json) {
    return BookData(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: double.tryParse(json['price'].toString()),
      stock: json['stock'],
      discount: json['discount'],
      priceAfterDiscount:
      (json['price_after_discount'] as num?)?.toDouble(),
      image: json['image'],
      category: json['category'],
      special: json['special'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'discount': discount,
      'price_after_discount': priceAfterDiscount,
      'image': image,
      'category': category,
      'special': special,
    };
  }
}