import 'package:bookia/features/home/data/models/book_model.dart';
import 'package:bookia/features/home/presentation/widgets/buy_price_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';

class BookCard extends StatelessWidget {
  final Book book;
  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.network(book.image ?? "")),
          ),
          SizedBox(height: 6.h),
          Text(
            book.name ?? "",
            style: AppTextStyle.text18Regular,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8.h),
          BuyPriceRow(price: "₹${book.price}", title: "Buy", priceTextStyle: AppTextStyle.text18Regular,buttonTextStyle: AppTextStyle.text15Regular.copyWith(color: Colors.white),buttonHeight: 28,buttonWidth: 72,buttonRadius: 4,)
        ],
      ),
    );
  }
}
