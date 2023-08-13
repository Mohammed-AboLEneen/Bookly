import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';

import '../../../data/models/book_model/BookModel.dart';
import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit() : super(FeaturedBooksInit());

  final HomeRepo homeRepo = HomeRepoImplement();

  Future<void> fetchFeaturedBooks() async {
    var result = await homeRepo.fetchFeaturedBooks('');

    print('don;');
    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }

  Future<void> test() async {

    Dio dio = Dio();

    try{

      Response response = await dio.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:computer science');

      List<BookModel> books = [];

      print(response.data.runtimeType);
      for (var element in response.data['items']) {
        books.add(BookModel.fromJson(element));
      }

      print(books[0].volumeInfo?.authors);

  }catch (e, stackTrace) {
      print('Caught an exception: $e');
      print('Stack trace: $stackTrace');
      print('Exception type: ${e.runtimeType}');
    }
    }
}
