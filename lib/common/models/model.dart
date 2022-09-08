import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';

@freezed
class Model with _$Model {
  const factory Model({
    required String id,
    required String name,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json['modelid'].toString(),
      name: json['modelname'],
    );
  }
}
