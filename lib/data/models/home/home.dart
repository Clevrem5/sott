import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'near_place.dart';

part 'home.g.dart';

@JsonSerializable()
class HomeModel {
  final int id;
  @JsonKey(name: "numOfRooms")
  final int rooms;
  @JsonKey(name: "totalFloors")
  final int qavat;
  final int floor;
  final num price;
  final num area;
  final String category;
  final String currency;
  final String image;
  @NearPlaceConvertor()
  @JsonKey(name: "nearestPopularPlace")
  final NearPlace nearPlace;

  // final String category;

  HomeModel({
    required this.id,
    required this.rooms,
    required this.qavat,
    required this.floor,
    required this.price,
    required this.area,
    required this.category,
    required this.currency,
    required this.image,
    required this.nearPlace,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

class NearPlaceConvertor extends Converter<NearPlace, Map<String, dynamic>> {
  const NearPlaceConvertor();

  NearPlace fromJson(Map<String, dynamic> json) {
    return NearPlace.fromJson(json);
  }

  Map<String, dynamic> toJson(Map<String, dynamic> places) {
    return places;
  }

  @override
  Map<String, dynamic> convert(NearPlace input) {
    throw UnimplementedError();
  }
}
/*

  @override
  List<ProductImagesModel> fromJson(List<dynamic> json) {
    return json.map((e) => ProductImagesModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  List<dynamic> toJson(List<ProductImagesModel> images) {
    return images.map((e) => e.toJson()).toList();
  }
}
* {
    "id": 1,
    "category": "Kv.",
    "image": "http://192.168.10.214:8888/uploads/real_estates/1.jpg",
    "price": 1200000000,
    "currency": "UZS",
    "area": 101.25,
    "numOfRooms": 4,
    "totalFloors": 5,
    "floor": 1,
    "nearestPopularPlace": {
      "title": "Bunyodkor",
      "distance": 500,
      "image": "http://192.168.10.214:8888/uploads/icons/metro_station.svg"
    }
  },
  * */
