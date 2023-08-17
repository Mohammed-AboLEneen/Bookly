
import '../../../../../core/models/book_model/BookModel.dart';

abstract class SimilarBooksStates{}

class SimilarBooksInit extends SimilarBooksStates{}
class SimilarBooksLoading extends SimilarBooksStates{}
class SimilarBooksSuccess extends SimilarBooksStates{

  List<BookModel> books = [];
  SimilarBooksSuccess(this.books);
}
class SimilarBooksFailure extends SimilarBooksStates{

  String? message;
  SimilarBooksFailure(this.message);
}