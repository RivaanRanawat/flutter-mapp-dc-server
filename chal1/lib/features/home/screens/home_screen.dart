import 'package:chal1/features/book_details/screens/book_details_screen.dart';
import 'package:chal1/features/home/widgets/single_book.dart';
import 'package:chal1/models/book.dart';
import 'package:chal1/providers/book_provider.dart';
import 'package:chal1/utils/error_screen.dart';
import 'package:chal1/utils/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigateToBookDetailScreen(BuildContext context, Book book) {
    Navigator.pushNamed(
      context,
      BookDetailsScreen.routeName,
      arguments: book,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(booksProvider).when(
            data: (books) => CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text('Books'),
                  centerTitle: false,
                  floating: true,
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: books.length,
                    (context, index) {
                      final singleBook = books[index];
                      return GestureDetector(
                        onTap: () =>
                            navigateToBookDetailScreen(context, singleBook),
                        child: SingleBook(book: singleBook),
                      );
                    },
                  ),
                ),
              ],
            ),
            error: (error, _) => ErrorScreen(
              error: error.toString(),
            ),
            loading: () => const Loader(),
          ),
    );
  }
}
