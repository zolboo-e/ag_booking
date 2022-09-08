//
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';
import '/common/services/backend_client.dart';
//

final bookingRepositoryProvider = Provider<_IBookingRepository>((ref) {
  final client = ref.watch(backendClientProvider);

  return _BookingRepository(client: client);
});

abstract class _IBookingRepository {
  Future<List<Manufacturer>> getManufacturers();
  Future<List<Model>> getModels(String manufacturerId);
  Future<List<ServiceCategory>> getCategories();
  Future<List<ServiceCenter>> getServiceCentersByServiceId(String serviceId);
  Future<List<String>> getAvailabilityByDate({
    required String serviceCenterId,
    required String serviceId,
    required DateTime date,
  });
  Future<void> createBooking({
    required String phoneNumber,
    required String serviceId,
    required DateTime date,
    required String timeRange,
    required String plateNumber,
    int? mileage,
    String? jobInstruction,
  });
}

class _BookingRepository implements _IBookingRepository {
  _BookingRepository({required this.client});

  final Dio client;

  @override
  Future<List<Manufacturer>> getManufacturers() async {
    const url = '/ap/carbrands';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']);

    return data.map((category) => Manufacturer.fromJson(category)).toList();
  }

  @override
  Future<List<Model>> getModels(String manufacturerId) async {
    final url = '/ap/carmodel/$manufacturerId';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']);

    return data.map((category) => Model.fromJson(category)).toList();
  }

  @override
  Future<List<ServiceCategory>> getCategories() async {
    const url = '/ap/category';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']);

    return data.map((category) => ServiceCategory.fromJson(category)).toList();
  }

  @override
  Future<List<ServiceCenter>> getServiceCentersByServiceId(
      String serviceId) async {
    final url = '/ap/services/$serviceId';
    final response = await client.get(url);
    final data = List<Map<String, dynamic>>.from(response.data['data']['data']);

    return data.map((branch) => ServiceCenter.fromJson(branch)).toList();
  }

  @override
  Future<List<String>> getAvailabilityByDate({
    required String serviceCenterId,
    required String serviceId,
    required DateTime date,
  }) async {
    const url = '/ap/availabletime';
    final queryParameters = {
      'branch': serviceCenterId,
      'service': serviceId,
      'bookingdate': date.toIso8601String(),
    };
    final response = await client.get(url, queryParameters: queryParameters);
    final data = List<String>.from(response.data['data']['finalslot']);

    return data;
  }

  @override
  Future<void> createBooking({
    required String phoneNumber,
    required String serviceId,
    required DateTime date,
    required String timeRange,
    required String plateNumber,
    int? mileage,
    String? jobInstruction,
  }) async {
    const url = '/ap/bookingstore';
    final payload = {
      'mobile': phoneNumber,
      'serviceid': serviceId,
      'booking_date': DateFormat('yyyy-MM-dd').format(date),
      'booking_time': timeRange,
      'carnumber': plateNumber,
    };
    if (mileage != null) {
      payload['kilo'] = '$mileage';
    }
    if (jobInstruction != null) {
      payload['description'] = jobInstruction;
    }

    await client.post(url, data: payload);
  }
}
