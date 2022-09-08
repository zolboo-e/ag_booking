//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';
import '/modules/bookings/services/index.dart';

final serviceCentersProvider = FutureProvider.autoDispose
    .family<List<ServiceCenter>, String?>((ref, serviceId) async {
  if (serviceId == null) {
    return [];
  }

  final serviceCenters = await ref
      .read(bookingRepositoryProvider)
      .getServiceCentersByServiceId(serviceId);

  return serviceCenters;
});
