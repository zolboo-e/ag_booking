//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/modules/bookings/models/index.dart';

final serviceCategoriesProvider =
    StateProvider<List<ServiceCategory>>((_) => []);

// final serviceCategoriesNotifierProvider =
//     StateNotifierProvider<ServiceCategoriesNotifier, ServiceCategories>((ref) {
//   return ServiceCategoriesNotifier(ref.read);
// });

// class ServiceCategoriesNotifier extends StateNotifier<ServiceCategories> {
//   ServiceCategoriesNotifier(
//     this.read, [
//     ServiceCategories? categories,
//   ]) : super(categories ?? const ServiceCategories.loading());

//   final Reader read;

//   Future<void> fetch() async {
//     try {
//       final categories = await read(bookingRepositoryProvider).getCategories();
//       state = ServiceCategories.data(categories);
//     } catch (error) {
//       // state = ServiceCategories.error(error);
//     }
//   }
// }