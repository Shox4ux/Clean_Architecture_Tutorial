import 'package:clean_architecture_tutorial/src/presentation/screens/photo_info.dart';
import 'package:clean_architecture_tutorial/src/presentation/screens/photos_list.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "photos_list",
        builder: (context, state) => const PhotosListScreen(),
      ),
      GoRoute(
        path: "/photo_info",
        name: "photo_info",
        builder: (context, state) => const PhotoInfoScreen(),
      ),
    ],
  );
}
