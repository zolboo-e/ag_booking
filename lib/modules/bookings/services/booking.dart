//
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/services/backend_client.dart';
import '/modules/bookings/models/index.dart';
import '/modules/bookings/pages/availability.dart';
//

final bookingRepositoryProvider = Provider<_IBookingRepository>((ref) {
  final client = ref.watch(backendClientProvider);

  return _BookingRepository(client: client);
});

abstract class _IBookingRepository {
  Future<List<Brand>> getBrands();
  Future<List<ServiceCategory>> getCategories();
  Future<List<Branch>> getBranchesByServiceId(String serviceId);
  Future<List<String>> getAvailabilityByDate({
    required String branchId,
    required String serviceId,
    required DateTime date,
  });
}

class _BookingRepository implements _IBookingRepository {
  _BookingRepository({required this.client});

  final Dio client;

  @override
  Future<List<Brand>> getBrands() async {
    // const url = '/ap/category';
    // final response = await client.get(url);
    // final data = List<Map<String, dynamic>>.from(response.data['data']);

    // return data.map((category) => Brand.fromJson(category)).toList();
    return const [
      Brand(id: '1', name: 'Toyota'),
      Brand(id: '2', name: 'Nissan'),
      Brand(id: '3', name: 'Honda'),
      Brand(id: '4', name: 'Suzuki'),
      Brand(id: '5', name: 'Mitsubishi'),
    ];
  }

  @override
  Future<List<ServiceCategory>> getCategories() async {
    const url = '/ap/category';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']);

    return data.map((category) => ServiceCategory.fromJson(category)).toList();
  }

  @override
  Future<List<Branch>> getBranchesByServiceId(String serviceId) async {
    final url = '/ap/services/$serviceId';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']['data']);

    return data.map((branch) => Branch.fromJson(branch)).toList();
  }

  @override
  Future<List<String>> getAvailabilityByDate({
    required String branchId,
    required String serviceId,
    required DateTime date,
  }) async {
    const url = '/ap/availabletime';
    final queryParameters = {
      'branch': branchId,
      'service': serviceId,
      'bookingdate': DateFormat('yyyy-MM-dd').format(date),
    };
    final response = await client.get(url, queryParameters: queryParameters);
    final data = List<String>.from(response.data['data']['finalslot']);

    return data;
  }
}
