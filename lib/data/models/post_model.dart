import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic>json)=>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}

/*
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
