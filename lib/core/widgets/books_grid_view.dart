import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/home/data/models/book_model.dart';
import '../../features/home/presentation/widgets/book_card.dart';

class BooksGridView extends StatelessWidget {
  final List<Book>? books;

  const BooksGridView({super.key, this.books});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if(state is AddToCartLoading){
          showDialog(context: context, builder: (context)=> Center(child: CircularProgressIndicator(backgroundColor: AppColors.mainColor),));
        }else if(state is AddToCartSuccess){
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message,),backgroundColor: Colors.green,));
        }
      },
      child: GridView.builder(
          itemCount: books?.length ?? 0,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 11.h,
              crossAxisSpacing: 11.w,
              childAspectRatio: 163 / 281),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () => context.pushNamed(Routes.bookDetailsScreen,arguments: books?[index].id),
                child: BookCard(book: books![index], onTap: () {
                  context.read<HomeCubit>().addToCart(books?[index].id ?? 0);
                },));
          }),
    );
  }
}
