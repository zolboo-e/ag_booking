import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
//

part 'availability_provider.freezed.dart';

@freezed
class AvailabilityProvider with _$AvailabilityProvider {
  const factory AvailabilityProvider({
    required String? serviceId,
    required String? serviceCenterId,
    required DateTime? date,
  }) = _AvailabilityProvider;
}
