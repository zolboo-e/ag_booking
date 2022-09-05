//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garage_booking/modules/bookings/models/index.dart';
//
import '/modules/bookings/providers/index.dart';

class AvailabilityPageArguments {
  final String branchId;
  final String serviceId;

  AvailabilityPageArguments(this.branchId, this.serviceId);
}

class AvailabilityPage extends StatelessWidget {
  static const routeName = '/availability';

  const AvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
      ),
      body: _AvailabilityPageView(),
    );
  }
}

class _AvailabilityPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ModalRoute.of(context);
    final args = route!.settings.arguments as AvailabilityPageArguments;

    final availabilityState = ref.watch(availabilityProvider(
      AvailabilityProvider(
        branchId: args.branchId,
        serviceId: args.serviceId,
        date: DateTime(2022, 8, 30),
      ),
    ));

    return availabilityState.when(
      data: (availability) {
        return ListView.builder(
          itemCount: availability.length,
          itemBuilder: (context, index) {
            final timeRange = availability[index];

            return _AvailabilityListItem(timeRange);
          },
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, _) {
        return Center(
          child: Text(error.toString()),
        );
      },
    );
  }
}

class _AvailabilityListItem extends StatelessWidget {
  const _AvailabilityListItem(this.timeRange);

  final String timeRange;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.access_time),
        trailing: const Icon(Icons.chevron_right),
        title: Text(
          timeRange,
          style: const TextStyle(fontSize: 20),
        ),
        // onTap: () {
        //   Navigator.pushNamed(context, ServiceCategoriesSubPage.routeName);
        // },
      ),
    );
  }
}
