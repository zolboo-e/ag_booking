//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

//
import '/common/components/index.dart';
import '/modules/auth/providers/index.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: _LoginPageView(),
    );
  }
}

class _LoginPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final state = ref.watch(loginPageControllerProvider);

    final userNameController =
        TextEditingController(text: 'na.saruulbuyan@gmail.com');
    final passwordController = TextEditingController(text: '12345678');

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            TextFormField(
              controller: userNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'username is required';
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'password is required';
                }
                return null;
              },
            ),
            CustomElevatedButton(
              onPressed: state.maybeWhen(
                loading: null,
                orElse: () => () => ref
                    .read(loginPageControllerProvider.notifier)
                    .login(userNameController.text, passwordController.text),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              isLoading: state is AsyncLoading,
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm {
  const LoginForm({
    this.userName = '',
    this.password = '',
  });

  final String password;
  final String userName;
}
