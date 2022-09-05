import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'service_category.freezed.dart';

@freezed
class ServiceCategory with _$ServiceCategory {
  const factory ServiceCategory({
    required String id,
    required String name,
    required String parentId,
    required List<ServiceCategory> children,
  }) = _ServiceCategory;

  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    final children = List<Map<String, dynamic>>.from(json['children']);

    return ServiceCategory(
      id: json['id'].toString(),
      name: json['name'],
      parentId: json['parent_id'].toString(),
      children: children
          .map(
            (child) => ServiceCategory.fromJson(child),
          )
          .toList(),
    );
  }
}

// https://github.com/funwithflutter/riverpod_tutorials/blob/main/riverpod_004_freezed/lib/todo_state.dart