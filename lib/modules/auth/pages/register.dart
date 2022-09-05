//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register';

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: _RegisterPageView(),
    );
  }
}

class _RegisterPageView extends ConsumerWidget {
  @override
  Widget build(Object context, WidgetRef ref) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
