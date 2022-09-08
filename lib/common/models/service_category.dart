import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'service_category.freezed.dart';

@freezed
class ServiceCategory with _$ServiceCategory {
  const factory ServiceCategory({
    required String id,
    required String name,
  }) = _ServiceCategory;

  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    return ServiceCategory(
      id: json['id'].toString(),
      name: json['name'],
    );
  }
}

// https://github.com/funwithflutter/riverpod_tutorials/blob/main/riverpod_004_freezed/lib/todo_state.dart