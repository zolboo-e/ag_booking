import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'brand.freezed.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required String id,
    required String name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'].toString(),
      name: json['name'],
    );
  }
}
