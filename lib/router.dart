//
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//
import 'common/services/index.dart';
import '/modules/auth/index.dart';
import '/modules/bookings/index.dart';
import '/modules/others/index.dart';
//
import 'custom_bottom_navigationbar.dart';

GoRouter generateRouter(WidgetRef ref) {
  return GoRouter(
    routes: [
      // main route
      GoRoute(
        path: '/',
        redirect: (_) => '/tabs/bookings',
      ),
      GoRoute(
        path: '/tabs/:routeName',
        builder: (_, state) {
          final routeName = state.params['routeName']!;

          return CustomBottomNavigationBar(
            key: state.pageKey,
            currentRoute: '/$routeName',
          );
        },
      ),
      // booking routes
      GoRoute(
        path: CreateBookingPage.routeName,
        builder: (_, __) => const CreateBookingPage(),
      ),
      GoRoute(
          path: MainServiceCategoriesPage.routeName,
          builder: (_, __) => const MainServiceCategoriesPage(),
          routes: [
            GoRoute(
              path:
                  '${SubServiceCategoriesPage.routeName.replaceFirst('/', '')}/:mainCategoryId',
              builder: (_, state) {
                final mainCategoryId = state.params['mainCategoryId']!;

                return SubServiceCategoriesPage(mainCategoryId: mainCategoryId);
              },
            ),
          ]),

      // auth routes
      GoRoute(
        path: LoginPage.routeName,
        builder: (_, __) => const LoginPage(),
      ),
      GoRoute(
        path: RegisterPage.routeName,
        builder: (_, __) => const RegisterPage(),
      ),
      GoRoute(
        path: WelcomePage.routeName,
        builder: (_, __) => const WelcomePage(),
      ),
    ],
    redirect: (state) {
      final token = ref.read(accessTokenProvider);
      final isLoggedIn = token?.isNotEmpty ?? false;
      final isAuthRoute = _authRoutes.contains(state.subloc);

      if (!isLoggedIn && !isAuthRoute) {
        return WelcomePage.routeName;
      }
      if (isLoggedIn && isAuthRoute) {
        return '/';
      }

      return null;
    },
    // https://github.com/lucavenir/go_router_riverpod/tree/master/lib
    refreshListenable: GoRouterRefreshStream(
      ref.watch(accessTokenProvider.notifier).stream,
    ),
    errorBuilder: (context, state) => ErrorPage(error: state.error),
  );
}

const _authRoutes = [
  WelcomePage.routeName,
  LoginPage.routeName,
  RegisterPage.routeName,
];
