import 'package:flutter/material.dart';

class BookingsPage extends StatelessWidget {
  static const routeName = '/bookings';

  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _BookingsPageView();
  }
}

class _BookingsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Bookings'),
    );
  }
}
