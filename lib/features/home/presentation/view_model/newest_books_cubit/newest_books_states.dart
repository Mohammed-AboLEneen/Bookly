
import '../../../../../core/models/book_model/BookModel.dart';

abstract class NewestBooksStates{}

class NewestBooksInit extends NewestBooksStates{}
class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksSuccess extends NewestBooksStates{

  List<BookModel> books = [];
  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksStates{

  String? message;
  NewestBooksFailure(this.message);
}