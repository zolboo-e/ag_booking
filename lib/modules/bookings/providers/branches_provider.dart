//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/modules/bookings/models/index.dart';
import '/modules/bookings/pages/branches.dart';
import '/modules/bookings/services/index.dart';

final branchesProvider = FutureProvider.autoDispose
    .family<List<Branch>, BranchesPageArguments>((ref, args) async {
  return ref
      .read(bookingRepositoryProvider)
      .getBranchesByServiceId(args.serviceId);
});
