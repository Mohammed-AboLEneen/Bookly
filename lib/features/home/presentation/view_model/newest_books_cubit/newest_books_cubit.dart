import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';

import 'Newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit() : super(NewestBooksInit());

  final HomeRepo homeRepo = HomeRepoImplement();

  Future<void> fetchNewestBooks() async {
    var result = await homeRepo.fetchFeaturedBooks('&Sorting=newest');

    result.fold((failure) => emit(NewestBooksFailure(failure.message)),
        (books) {

      for(var e in books){

        print('image: ${e.volumeInfo?.imageLinks?.smallThumbnail}');
      }
      return emit(NewestBooksSuccess(books));
    });
  }
}
