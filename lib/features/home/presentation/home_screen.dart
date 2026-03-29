import 'package:bookia/core/helper/extensions.dart';
import 'package:bookia/core/routing/routes.dart';
import 'package:bookia/features/home/cubit/home_cubit.dart';
import 'package:bookia/core/widgets/books_grid_view.dart';
import 'package:bookia/features/home/presentation/widgets/home_app_bar.dart';
import 'package:bookia/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/book_grid_view_for_loading.dart';
import '../../../gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        children: [
          HomeAppBar(
            widget1: Assets.images.logo.image(width: 100.w),
            widget2: InkWell(
              onTap: () => context.pushNamed(Routes.searchScreen),
              child: SvgPicture.asset(
                Assets.icons.search,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          HomeSlider(),
          SizedBox(
            height: 31.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Best Seller",
                style: AppTextStyle.text24Regular,
              )),
          SizedBox(
            height: 15.h,
          ),
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (prev, current) =>
                current is GetHomeBooksLoading ||
                current is GetHomeBooksSuccess ||
                current is GetHomeBooksError,
            builder: (context, state) {
              if (state is GetHomeBooksLoading) {
                return Expanded(child: BookGridViewForLoading());
              } else if (state is GetHomeBooksSuccess) {
                return Expanded(child: BooksGridView(books: state.books,));
              } else {
                return Center(
                  child: Text("Error"),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
