import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/core/widgets/books_grid_view.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/features/search/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/book_grid_view_for_loading.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(),
        title: Text("Search"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: "search...",
              onChanged: (t) {
                context.read<SearchCubit>().searchAction(t);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            BlocBuilder<SearchCubit, SearchState>(
              buildWhen: (prev, current) =>
                  current is SearchLoading ||
                  current is SearchSuccess ||
                  current is SearchError,
              builder: (context, state) {
                if (state is SearchLoading) {
                  return Expanded(child: BookGridViewForLoading());
                } else if (state is SearchSuccess) {
                  return Expanded(
                    child: BooksGridView(
                      books: state.books,
                    ),
                  );
                } else {
                  return Text("No search ...");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
