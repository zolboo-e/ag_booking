import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unnecessary_import
import 'package:flutter/foundation.dart';

import 'service_category.dart';

part 'service_categories.freezed.dart';

@freezed
class ServiceCategories with _$ServiceCategories {
  const factory ServiceCategories.data(
    List<ServiceCategory> categories,
  ) = ServiceCategoriesData;
  const factory ServiceCategories.loading() = ServiceCategoriesLoading;
  const factory ServiceCategories.error(DioError error) =
      ServiceCategoriesError;
}
