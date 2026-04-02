class ShowCartModel {
  final Data? data;
  final String? message;
  final List<dynamic>? error;
  final int? status;

  ShowCartModel({
    this.data,
    this.message,
    this.error,
    this.status,
  });

  factory ShowCartModel.fromJson(Map<String, dynamic> json) {
    return ShowCartModel(
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
      message: json['message'],
      error: json['error'],
      status: json['status'],
    );
  }
}

class Data {
  final int? id;
  final User? user;
  final String? total;
  final List<CartItem>? cartItems;

  Data({
    this.id,
    this.user,
    this.total,
    this.cartItems,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      total: json['total'],
      cartItems: json['cart_items'] != null
          ? List<CartItem>.from(
          json['cart_items'].map((x) => CartItem.fromJson(x)))
          : [],
    );
  }
}

class User {
  final int? userId;
  final String? userName;

  User({
    this.userId,
    this.userName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      userName: json['user_name'],
    );
  }
}

class CartItem {
  final int? itemId;
  final int? itemProductId;
  final String? itemProductName;
  final String? itemProductImage;
  final String? itemProductPrice;
  final int? itemProductDiscount;
  final double? itemProductPriceAfterDiscount;
  final int? itemProductStock;
  final int? itemQuantity;
  final double? itemTotal;

  CartItem({
    this.itemId,
    this.itemProductId,
    this.itemProductName,
    this.itemProductImage,
    this.itemProductPrice,
    this.itemProductDiscount,
    this.itemProductPriceAfterDiscount,
    this.itemProductStock,
    this.itemQuantity,
    this.itemTotal,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      itemId: json['item_id'],
      itemProductId: json['item_product_id'],
      itemProductName: json['item_product_name'],
      itemProductImage: json['item_product_image'],
      itemProductPrice: json['item_product_price'],
      itemProductDiscount: json['item_product_discount'],
      itemProductPriceAfterDiscount:
      (json['item_product_price_after_discount'] as num?)?.toDouble(),
      itemProductStock: json['item_product_stock'],
      itemQuantity: json['item_quantity'],
      itemTotal: (json['item_total'] as num?)?.toDouble(),
    );
  }
}