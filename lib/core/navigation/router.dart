import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_repository/core/navigation/routes.dart';
import 'package:hive_repository/features/post/manager/post_bloc.dart';
import 'package:hive_repository/features/post/presentation/post_view.dart';
import 'package:hive_repository/features/sotthome/manager/home_bloc.dart';
import 'package:hive_repository/features/sotthome/manager/home_event.dart';
import 'package:hive_repository/features/sotthome/presentation/home_view.dart';

final router = GoRouter(
  initialLocation: Routes.sotHome,
  routes: [
    GoRoute(
      path: Routes.post,
      builder: (context, state) => BlocProvider(
        create: (context) => PostBloc(
          repo: context.read(),
        )..add(PostLoad()),
        child: PostView(),
      ),
    ),
    GoRoute(
      path: Routes.sotHome,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          repo: context.read(),
        )..add(HomeLoad()),
        child: HomeView(),
      ),
    ),
  ],
);
