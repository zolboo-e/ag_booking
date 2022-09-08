import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
//
import '/common/models/index.dart';
//

part 'booking.freezed.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required Organization organization,
    required ServiceCenter serviceCenter,
    required Service service,
    required DateTime startDate,
    required DateTime endDate,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      id: json['id'].toString(),
      organization: Organization.fromJson(json['organization']),
      serviceCenter: ServiceCenter.fromJson(json['branch']),
      service: Service.fromJson(json['service']),
      startDate: DateTime.parse(json['start_time']),
      endDate: DateTime.parse(json['end_time']),
    );
  }
}
