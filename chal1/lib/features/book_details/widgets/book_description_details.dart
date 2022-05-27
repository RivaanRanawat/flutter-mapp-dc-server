import 'package:chal1/models/book.dart';
import 'package:flutter/material.dart';

class BookDescriptionDetails extends StatelessWidget {
  final Book book;
  const BookDescriptionDetails({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  book.publisher,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  book.description,
                ),
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}
