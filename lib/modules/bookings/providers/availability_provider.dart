//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/modules/bookings/models/index.dart';
import '/modules/bookings/services/index.dart';

final availabilityProvider = FutureProvider.autoDispose
    .family<List<String>, AvailabilityProvider>((ref, args) async {
  return ref.read(bookingRepositoryProvider).getAvailabilityByDate(
        branchId: args.branchId,
        serviceId: args.serviceId,
        date: args.date,
      );
});
