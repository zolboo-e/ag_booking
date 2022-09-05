//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//
import '/modules/auth/index.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/welcome';

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WelcomePageView(),
    );
  }
}

class _WelcomePageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: ElevatedButton(
                onPressed: () => context.push(RegisterPage.routeName),
                child: const Text('Register'),
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              fit: FlexFit.tight,
              child: ElevatedButton(
                onPressed: () => context.push(LoginPage.routeName),
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
