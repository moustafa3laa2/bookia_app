import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/book_model.dart';
import 'book_card.dart';

class BooksGridView extends StatelessWidget {
  final List<Book>? books;
  const BooksGridView({super.key, this.books});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: books?.length ?? 0,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 11.h,
            crossAxisSpacing: 11.w,
            childAspectRatio: 163 / 281),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () => context.pushNamed(Routes.bookDetailsScreen),
              child: BookCard(book: books![index]));
        });
  }
}
