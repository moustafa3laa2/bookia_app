import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_card.dart';

class BooksGridView extends StatelessWidget {
  const BooksGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, current) =>
          current is GetHomeBooksLoading ||
          current is GetHomeBooksSuccess ||
          current is GetHomeBooksError,
      builder: (context, state) {
        if (state is GetHomeBooksLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetHomeBooksSuccess) {
          return Expanded(
            child: GridView.builder(
                itemCount: state.books?.length ?? 0,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 11.h,
                    crossAxisSpacing: 11.w,
                    childAspectRatio: 163 / 281),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: ()=>context.pushNamed(Routes.bookDetailsScreen),
                      child: BookCard(book: state.books![index]));
                }),
          );
        } else {
          return Center(
            child: Text("Error"),
          );
        }
      },
    );
  }
}
