import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'service.freezed.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required String id,
    required String name,
    required String parentId,
    required int price,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'].toString(),
      name: json['category']['name'],
      parentId: json['parent_id'].toString(),
      price: json['price'],
    );
  }
}
