import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
//

part 'organization.freezed.dart';

@freezed
class Organization with _$Organization {
  const factory Organization({
    required String id,
    required String name,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) {
    return Organization(
      id: json['id'].toString(),
      name: json['name'],
    );
  }
}
