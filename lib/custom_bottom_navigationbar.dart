import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'modules/bookings/index.dart';
import 'modules/notifications/index.dart';
import 'modules/settings/index.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Map<String, CustomBottomNavigationBarItem> routes;
  final String currentRoute;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentRoute,
    routes,
  }) : routes = routes ?? items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Garage Booking')),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: ((index) {
            final location = '/tabs${routes.keys.toList()[index]}';
            context.go(location);
          }),
          selectedIndex:
              routes.keys.toList().indexWhere((key) => key == currentRoute),
          destinations: routes.values.map((e) => e.destination).toList(),
        ),
        body: routes[currentRoute]?.page,
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push(CreateBookingPage.routeName),
          tooltip: 'Booking',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class CustomBottomNavigationBarItem {
  const CustomBottomNavigationBarItem({
    required this.destination,
    required this.page,
  });

  final Widget destination;
  final Widget page;
}

const items = {
  BookingsPage.routeName: CustomBottomNavigationBarItem(
    destination: NavigationDestination(
      icon: Icon(Icons.calendar_month_outlined),
      selectedIcon: Icon(Icons.calendar_month),
      label: 'Bookings',
    ),
    page: BookingsPage(),
  ),
  NotificationsPage.routeName: CustomBottomNavigationBarItem(
    destination: NavigationDestination(
      icon: Icon(Icons.notifications_outlined),
      selectedIcon: Icon(Icons.notifications),
      label: 'Notifications',
    ),
    page: NotificationsPage(),
  ),
  SettingsPage.routeName: CustomBottomNavigationBarItem(
    destination: NavigationDestination(
      selectedIcon: Icon(Icons.settings),
      icon: Icon(Icons.settings_outlined),
      label: 'Settings',
    ),
    page: SettingsPage(),
  ),
};
