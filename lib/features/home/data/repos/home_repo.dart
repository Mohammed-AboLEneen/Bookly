import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/models/book_model/BookModel.dart';


abstract class HomeRepo{

  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks(String queryParams);
}