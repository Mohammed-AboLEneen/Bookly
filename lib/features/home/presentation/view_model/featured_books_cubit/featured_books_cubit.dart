import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';

import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(super.initialState);

  final HomeRepo homeRepo = HomeRepoImplement();

  Future<void> fetchFeaturedBooks() async {
    var result = await homeRepo.fetchFeaturedBooks('');

    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
