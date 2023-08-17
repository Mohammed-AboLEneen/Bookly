
import '../../../../../core/models/book_model/BookModel.dart';

abstract class FeaturedBooksStates{}

class FeaturedBooksInit extends FeaturedBooksStates{}
class FeaturedBooksLoading extends FeaturedBooksStates{}
class FeaturedBooksSuccess extends FeaturedBooksStates{

  List<BookModel> books = [];
  FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksStates{

  String? message;
  FeaturedBooksFailure(this.message);
}