//
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//
import '/common/models/index.dart';
import '/common/services/index.dart';

//

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _SettingsPageView();
  }
}

class _SettingsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = [
      ListItem(
        leading: const Icon(Icons.logout),
        text: 'Logout',
        onTap: () => showDialog(
          context: context,
          builder: (_) => _LogoutDialog(),
        ),
      ),
    ];

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Card(
          child: ListTile(
            leading: item.leading,
            // trailing: const Icon(Icons.chevron_right),
            title: Text(
              item.text,
              style: const TextStyle(fontSize: 20),
            ),
            onTap: item.onTap,
          ),
        );
      },
    );
  }
}

class _LogoutDialog extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          child: const Text('Logout'),
          onPressed: () => ref.read(accessTokenProvider.notifier).state = null,
        ),
      ],
    );
  }
}
