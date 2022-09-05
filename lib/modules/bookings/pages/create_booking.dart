//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garage_booking/modules/bookings/models/index.dart';
//
import '/common/components/index.dart';
import '/modules/bookings/providers/index.dart';

class CreateBookingPage extends StatelessWidget {
  static const routeName = '/create_booking';

  const CreateBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Booking'),
      ),
      body: _CreateBookingPageView(),
    );
  }
}

class _CreateBookingPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final brands = ref.watch(brandsProvider);
    final brand = ref.watch(_selectedBrandProvider);

    final mainCategories = ref.watch(serviceCategoriesProvider);
    final mainCategory = ref.watch(_selectedMainCategoryProvider);

    final subCategories = ref.watch(_subCategoriesProvider);
    final subCategory = ref.watch(_selectedSubCategoryProvider);

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            DropdownButtonFormField(
              icon: const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(),
              ),
              decoration: const InputDecoration(labelText: 'Brand'),
              value: brand,
              items: brands
                  .map((brand) => DropdownMenuItem(
                        value: brand,
                        child: Text(brand.name),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != brand) {
                  ref.read(_selectedBrandProvider.notifier).state = value;
                }
              },
            ),
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: 'Main category'),
              value: mainCategory,
              items: mainCategories
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value?.id != mainCategory?.id) {
                  ref.read(_selectedSubCategoryProvider.notifier).state = null;
                  ref.read(_selectedMainCategoryProvider.notifier).state =
                      value;
                }
              },
            ),
            DropdownButtonFormField<ServiceCategory>(
              decoration: const InputDecoration(labelText: 'Sub category'),
              value: subCategory,
              items: subCategories
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name),
                      ))
                  .toList(),
              onChanged: mainCategory != null
                  ? (value) {
                      if (value?.id != subCategory?.id) {
                        ref.read(_selectedSubCategoryProvider.notifier).state =
                            value;
                      }
                    }
                  : null,
            ),
            // CustomElevatedButton(
            //   onPressed: state.maybeWhen(
            //     loading: null,
            //     orElse: () => () => ref
            //         .read(loginPageControllerProvider.notifier)
            //         .login(userNameController.text, passwordController.text),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: const Size.fromHeight(50),
            //   ),
            //   isLoading: state is AsyncLoading,
            //   child: const Text('Submit'),
            // )
          ],
        ),
      ),
    );
  }
}

final _selectedBrandProvider = StateProvider.autoDispose<Brand?>((_) => null);
final _selectedMainCategoryProvider =
    StateProvider.autoDispose<ServiceCategory?>((_) => null);
final _subCategoriesProvider =
    Provider.autoDispose<List<ServiceCategory>>((ref) {
  final mainCategory = ref.watch(_selectedMainCategoryProvider);

  return mainCategory?.children ?? [];
});
final _selectedSubCategoryProvider =
    StateProvider.autoDispose<ServiceCategory?>((_) => null);
