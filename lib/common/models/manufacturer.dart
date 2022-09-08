import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'manufacturer.freezed.dart';

@freezed
class Manufacturer with _$Manufacturer {
  const factory Manufacturer({
    required String id,
    required String name,
  }) = _Manufacturer;

  factory Manufacturer.fromJson(Map<String, dynamic> json) {
    return Manufacturer(
      id: json['manuid'].toString(),
      name: json['manuname'],
    );
  }
}
