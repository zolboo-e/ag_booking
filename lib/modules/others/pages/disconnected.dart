//
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//

//

class DisconnectedPage extends StatelessWidget {
  static const routeName = '/disconnected';

  const DisconnectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disconnected'),
      ),
      body: _DisconnectedPageView(),
    );
  }
}

class _DisconnectedPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      child: const ElevatedButton(
        onPressed: null,
        child: Text('Try again'),
      ),
    );
  }
}
