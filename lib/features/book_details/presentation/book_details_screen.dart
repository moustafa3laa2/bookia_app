import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/features/book_details/cubit/show_book_details_cubit.dart';
import 'package:bookia/features/home/presentation/widgets/buy_price_row.dart';
import 'package:bookia/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 22.r, left: 24.r),
          child: BlocBuilder<ShowBookDetailsCubit, ShowBookDetailsState>(
            builder: (context, state) {
              if(state is ShowBookDetailsLoading){
                return Center(child: CircularProgressIndicator(color: AppColors.mainColor,),);
              }else if(state is ShowBookDetailsSuccess){
                return Column(
                  children: [
                    HomeAppBar(
                      widget1: ArrowBackIcon(),
                      widget2: SvgPicture.asset(
                        Assets.icons.bookmark,
                        width: 25.w,
                        height: 23.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7.r),
                      child: Image.network(
                       state.model.data?.image??"error no image"
                        ,
                        width: 183.w,
                        height: 271.h,
                      ),
                    ),
                    SizedBox(height: 11.h),
                    Text(
                      state.model.data?.name??"error no name",
                      style: AppTextStyle.text30Regular,
                    ),
                    Text(
                      state.model.data?.category??"error no category",
                      style: AppTextStyle.text15Regular
                          .copyWith(color: AppColors.mainColor),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      state.model.data?.description??"error no description",
                      style: AppTextStyle.text15Regular.copyWith(fontSize: 12.sp),
                    ),
                    Spacer(),
                    BuyPriceRow(
                      price: "₹${state.model.data?.price??""}",
                      title: "Add To Cart",
                      priceTextStyle: AppTextStyle.text24Regular,
                      buttonTextStyle:
                      AppTextStyle.text20Regular.copyWith(color: Colors.white),
                      buttonHeight: 56.h,
                      buttonWidth: 212.w,
                      buttonRadius: 8.r,
                    ),
                    SizedBox(height: 19.h),
                  ],
                );
              }else{
                return Scaffold(body: Center(child: Text("Errorrrrr!!"),),);
              }
            },
          ),
        ),
      ),
    );
  }
}
