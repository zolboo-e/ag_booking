//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';
import '/modules/bookings/services/index.dart';

final modelsProvider = FutureProvider.autoDispose
    .family<List<Model>, String?>((ref, manufacturerId) async {
  if (manufacturerId == null) {
    return [];
  }

  final models =
      await ref.read(bookingRepositoryProvider).getModels(manufacturerId);

  return models;
});
