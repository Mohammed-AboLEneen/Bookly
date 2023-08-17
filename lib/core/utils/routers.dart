import 'package:bookly/features/home/presentation/view/details_book_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/home/presentation/view_model/simillar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../models/book_model/BookModel.dart';

class BooklyRouters{

  static String homeView = '/homeView';
  static String detailsBookView = '/detailsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),

      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),

      GoRoute(
        path: '/detailsView',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(),
            child: DetailsBookView(bookModel: state.extra as BookModel,),
          );
        },
      )
    ],
  );
}