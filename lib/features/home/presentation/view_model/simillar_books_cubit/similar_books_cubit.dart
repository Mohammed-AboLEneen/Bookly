import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home/presentation/view_model/simillar_books_cubit/similar_books_states.dart';


class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit() : super(SimilarBooksInit());

  final HomeRepo homeRepo = HomeRepoImplement();

  Future<void> fetchSimilarBooks() async {
    var result = await homeRepo.fetchFeaturedBooks('Sorting=relevance');

    result.fold((failure) => emit(SimilarBooksFailure(failure.message)),
            (books) => emit(SimilarBooksSuccess(books)));
  }
}
