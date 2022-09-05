import 'package:flutter/material.dart';

import 'package:garage_booking/common/models/index.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _SettingsPageView();
  }
}

class _SettingsPageView extends StatelessWidget {
  static const List<ListItem> items = [
    ListItem(
      leading: Icon(Icons.cleaning_services),
      text: 'Cleaning',
    ),
    ListItem(
      leading: Icon(Icons.cleaning_services),
      text: 'Cleaning',
    ),
    ListItem(
      leading: Icon(Icons.cleaning_services),
      text: 'Cleaning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Card(
          child: ListTile(
            leading: item.leading,
            trailing: const Icon(Icons.chevron_right),
            title: Text(
              item.text,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
