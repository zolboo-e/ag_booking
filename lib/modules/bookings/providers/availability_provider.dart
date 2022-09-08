//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';
import '/modules/bookings/services/index.dart';

final availabilityProvider = FutureProvider.autoDispose
    .family<List<String>, AvailabilityProvider>((ref, args) async {
  final serviceCenterId = args.serviceCenterId;
  final serviceId = args.serviceId;
  final date = args.date;
  if (serviceCenterId == null || serviceId == null || date == null) {
    return [];
  }

  final availableTimeRanges =
      ref.read(bookingRepositoryProvider).getAvailabilityByDate(
            serviceCenterId: serviceCenterId,
            serviceId: serviceId,
            date: date,
          );

  return availableTimeRanges;
});
