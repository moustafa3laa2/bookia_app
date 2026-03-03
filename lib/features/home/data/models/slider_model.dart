class SliderModel {
  Data? data;
  String? message;
  int? status;

  SliderModel({
    this.data,
    this.message,
    this.status,
  });

  SliderModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

}

class Data {
  List<SliderItem>? sliders;

  Data({this.sliders});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <SliderItem>[];
      json['sliders'].forEach((v) {
        sliders!.add(SliderItem.fromJson(v));
      });
    }
  }

}

class SliderItem {
  String? image;

  SliderItem({this.image});

  SliderItem.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

}