import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
//
import 'organization.dart';
import 'service.dart';

part 'branch.freezed.dart';

@freezed
class Branch with _$Branch {
  const factory Branch({
    required String address,
    required String id,
    required String name,
    required Organization parent,
    required String phoneNumber,
    required List<Service> services,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) {
    final services = List<Map<String, dynamic>>.from(json['services']);

    return Branch(
      address: json['address'],
      id: json['id'].toString(),
      name: json['name'],
      parent: Organization.fromJson(json['organization']),
      phoneNumber: json['phone'],
      services: services
          .map(
            (service) => Service.fromJson(service),
          )
          .toList(),
    );
  }
}
