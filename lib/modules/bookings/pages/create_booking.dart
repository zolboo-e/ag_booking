//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

//
import '/common/models/index.dart';
import '/modules/bookings/providers/index.dart';
import '/modules/bookings/services/index.dart';

class CreateBookingPage extends StatelessWidget {
  static const routeName = '/create_booking';

  const CreateBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a booking'),
      ),
      body: _CreateBookingPageView(),
    );
  }
}

class _CreateBookingPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            _ManufacturerDropdown(),
            _ModelDropdown(),
            _ServiceDropdown(),
            _ServiceCenterDropdown(),
            _DatePicker(),
            _TimeRangeDropdown(),
            _RequestPickupSwitch(),
            _JobInstructionsTextField(),
            const SizedBox(height: 80),
            _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

final _selectedManufacturerProvider =
    StateProvider.autoDispose<Manufacturer?>((_) => null);

class _ManufacturerDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manufacturers = ref.watch(manufacturersProvider);
    final manufacturer = ref.watch(_selectedManufacturerProvider);

    return DropdownButtonFormField<Manufacturer>(
      decoration: const InputDecoration(labelText: 'Manufacturer'),
      value: manufacturer,
      items: manufacturers
          .map((manufacturer) => DropdownMenuItem(
                value: manufacturer,
                child: Text(manufacturer.name),
              ))
          .toList(),
      onChanged: (value) {
        if (value != manufacturer) {
          ref.read(_selectedModelProvider.notifier).state = null;
          ref.read(_selectedManufacturerProvider.notifier).state = value;
        }
      },
    );
  }
}

final _selectedModelProvider = StateProvider.autoDispose<Model?>((_) => null);

class _ModelDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manufacturer = ref.watch(_selectedManufacturerProvider);
    final models = ref.watch(modelsProvider(manufacturer?.id));
    final model = ref.watch(_selectedModelProvider);

    return DropdownButtonFormField<Model>(
      decoration: const InputDecoration(labelText: 'Model'),
      isExpanded: true,
      icon: models.maybeWhen(
        loading: () => const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(),
        ),
        orElse: () => null,
      ),
      value: model,
      items: models.maybeWhen(
        data: (data) => data
            .map((model) => DropdownMenuItem(
                  value: model,
                  child: Text(model.name),
                ))
            .toList(),
        orElse: () => [],
      ),
      onChanged: (value) {
        if (value != model) {
          ref.read(_selectedModelProvider.notifier).state = value;
        }
      },
    );
  }
}

final _selectedServiceProvider =
    StateProvider.autoDispose<ServiceCategory?>((_) => null);

class _ServiceDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final services = ref.watch(serviceCategoriesProvider);
    final service = ref.watch(_selectedServiceProvider);

    return DropdownButtonFormField(
      decoration: const InputDecoration(labelText: 'Service'),
      value: service,
      items: services
          .map((service) => DropdownMenuItem(
                value: service,
                child: Text(service.name),
              ))
          .toList(),
      onChanged: (value) {
        if (value != service) {
          ref.read(_selectedTimeRangeProvider.notifier).state = null;
          ref.read(_selectedServiceCenterProvider.notifier).state = null;
          ref.read(_selectedServiceProvider.notifier).state = value;
        }
      },
    );
  }
}

final _selectedServiceCenterProvider =
    StateProvider.autoDispose<ServiceCenter?>((_) => null);

class _ServiceCenterDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final service = ref.watch(_selectedServiceProvider);
    final serviceCenters = ref.watch(serviceCentersProvider(service?.id));
    final serviceCenter = ref.watch(_selectedServiceCenterProvider);

    return DropdownButtonFormField<ServiceCenter>(
      decoration: const InputDecoration(labelText: 'Service center'),
      isExpanded: true,
      icon: serviceCenters.maybeWhen(
        loading: () => const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(),
        ),
        orElse: () => null,
      ),
      value: serviceCenter,
      items: serviceCenters.maybeWhen(
        data: (data) => data
            .map((serviceCenter) => DropdownMenuItem(
                  value: serviceCenter,
                  child: Text(serviceCenter.name),
                ))
            .toList(),
        orElse: () => [],
      ),
      onChanged: (value) {
        if (value != serviceCenter) {
          ref.read(_selectedTimeRangeProvider.notifier).state = null;
          ref.read(_selectedServiceCenterProvider.notifier).state = value;
        }
      },
    );
  }
}

final _selectedDateProvider = StateProvider.autoDispose<DateTime?>((_) => null);

class _DatePicker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDate = ref.watch(_selectedDateProvider);

    final formatter = DateFormat('yyyy-MM-dd');
    final controller = TextEditingController(
      text: currentDate != null ? formatter.format(currentDate) : null,
    );

    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: const InputDecoration(labelText: 'Date'),
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: currentDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );

        if (selectedDate != null && selectedDate != currentDate) {
          ref.read(_selectedTimeRangeProvider.notifier).state = null;
          ref.read(_selectedDateProvider.notifier).state = selectedDate;
        }
      },
    );
  }
}

final _selectedTimeRangeProvider =
    StateProvider.autoDispose<String?>((_) => null);

class _TimeRangeDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final service = ref.watch(_selectedServiceProvider);
    final serviceCenter = ref.watch(_selectedServiceCenterProvider);
    final date = ref.watch(_selectedDateProvider);

    final availableTimeRanges = ref.watch(
      availabilityProvider(
        AvailabilityProvider(
          serviceId: service?.id,
          serviceCenterId: serviceCenter?.id,
          date: date,
        ),
      ),
    );
    final selectedTimeRange = ref.watch(_selectedTimeRangeProvider);

    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(labelText: 'Time range'),
      isExpanded: true,
      icon: availableTimeRanges.maybeWhen(
        loading: () => const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(),
        ),
        orElse: () => null,
      ),
      value: selectedTimeRange,
      items: availableTimeRanges.maybeWhen(
        data: (data) => data
            .map((timeRange) => DropdownMenuItem(
                  value: timeRange,
                  child: Text(timeRange),
                ))
            .toList(),
        orElse: () => [],
      ),
      onChanged: (value) {
        if (value != selectedTimeRange) {
          ref.read(_selectedTimeRangeProvider.notifier).state = value;
        }
      },
    );
  }
}

final pickupRequiredProvider = StateProvider.autoDispose<bool>((_) => false);

class _RequestPickupSwitch extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPickupRequired = ref.watch(pickupRequiredProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Pickup required'),
        Switch(
          value: isPickupRequired,
          onChanged: (value) {
            ref.read(pickupRequiredProvider.notifier).state = value;
          },
        )
      ],
    );
  }
}

final jobInstuctionsProvider = StateProvider.autoDispose<String?>((_) => null);

class _JobInstructionsTextField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobInstructions = ref.watch(jobInstuctionsProvider);

    final controller = TextEditingController(text: jobInstructions);
    return TextField(
      controller: controller,
      maxLength: 200,
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: 'Job instructions',
        hintText: 'Add instructions here',
      ),
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: () async {
        await showDialog<bool>(
          context: context,
          builder: (_) => _SubmitDialog(),
        );
      },
      child: const Text('Submit'),
    );
  }
}

class _SubmitDialog extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final service = ref.watch(_selectedServiceProvider);
    final date = ref.watch(_selectedDateProvider);
    final timeRange = ref.watch(_selectedTimeRangeProvider);

    return AlertDialog(
      title: const Text('Are you sure?'),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Submit'),
          onPressed: () async {
            final repository = ref.read(bookingRepositoryProvider);
            await repository.createBooking(
              phoneNumber: '99505251',
              serviceId: service!.id,
              date: date!,
              timeRange: timeRange!,
              plateNumber: '6510УНЧ',
            );
            context.go('/');
          },
        ),
      ],
    );
  }
}
