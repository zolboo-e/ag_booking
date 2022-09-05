//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//
import '/modules/bookings/models/index.dart';
import '/modules/bookings/providers/index.dart';
//
import 'availability.dart';

class BranchesPageArguments {
  final String serviceId;

  BranchesPageArguments(this.serviceId);
}

class BranchesPage extends StatelessWidget {
  static const routeName = '/branches';

  const BranchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
      ),
      body: _BranchesPageView(),
    );
  }
}

class _BranchesPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ModalRoute.of(context);
    final args = route!.settings.arguments as BranchesPageArguments;

    final branchesState = ref.watch(branchesProvider(args));

    return branchesState.when(
      data: (branches) {
        return ListView.builder(
          itemCount: branches.length,
          itemBuilder: (context, index) {
            final branch = branches[index];

            return _BranchListItem(branch, args.serviceId);
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

class _BranchListItem extends StatelessWidget {
  const _BranchListItem(this.branch, this.serviceId);

  final Branch branch;
  final String serviceId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.car_repair),
        trailing: const Icon(Icons.chevron_right),
        title: Text(
          branch.name,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(branch.parent.name),
            Row(
              children: const [
                Icon(Icons.car_repair),
                Icon(Icons.settings),
              ],
            )
          ],
        ),
        onTap: () {
          // context.go(AvailabilityPage.routeName);
          Navigator.pushNamed(
            context,
            AvailabilityPage.routeName,
            arguments: AvailabilityPageArguments(branch.id, serviceId),
          );
        },
      ),
    );
  }
}
