import 'package:chal1/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chal1/repositories/books_repository.dart';

FutureProvider<List<Book>> booksProvider = FutureProvider((ref) {
  BooksRepository bookRepo = ref.watch(booksRepositoryProvider);
  return bookRepo.loadBooksFromJSON();
});
