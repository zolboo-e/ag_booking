//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/modules/bookings/models/index.dart';
import '/modules/bookings/pages/branches.dart';
import '/modules/bookings/providers/index.dart';

class SubServiceCategoriesPageArguments {
  final String mainCategoryId;

  SubServiceCategoriesPageArguments(this.mainCategoryId);
}

class SubServiceCategoriesPage extends StatelessWidget {
  static const routeName = '/sub_service_categories';

  final String mainCategoryId;
  const SubServiceCategoriesPage({
    super.key,
    required this.mainCategoryId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Service Categories'),
      ),
      body: _SubServiceCategoriesPageView(mainCategoryId),
    );
  }
}

class _SubServiceCategoriesPageView extends ConsumerWidget {
  final String mainCategoryId;
  const _SubServiceCategoriesPageView(this.mainCategoryId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(serviceCategoriesProvider);
    final subCategories = categories
        .singleWhere((category) => category.id == mainCategoryId)
        .children;

    return ListView.builder(
      itemCount: subCategories.length,
      itemBuilder: (context, index) {
        final category = subCategories[index];

        return _SubServiceCategoryListItem(category);
      },
    );
  }
}

class _SubServiceCategoryListItem extends StatelessWidget {
  const _SubServiceCategoryListItem(this.category);

  final ServiceCategory category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.cleaning_services),
        trailing: const Icon(Icons.chevron_right),
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 20),
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            BranchesPage.routeName,
            arguments: BranchesPageArguments(category.id),
          );
        },
      ),
    );
  }
}
