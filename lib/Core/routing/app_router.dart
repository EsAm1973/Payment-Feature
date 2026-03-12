import 'package:go_router/go_router.dart';
import 'package:payment_feature/Core/routing/app_routes.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/mycart_view.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.myCartViewRoute,
        builder: (context, state) => const MyCartView(),
      ),
    ],
  );
}
