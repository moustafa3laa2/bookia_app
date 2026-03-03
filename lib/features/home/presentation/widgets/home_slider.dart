import 'package:bookia/features/home/cubit/home_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/theme/app_colors.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is GetHomeSlidersLoading){
          return Center(child: CircularProgressIndicator(),);
        }else if(state is GetHomeSlidersSuccess){
          return Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    height: 150.h,
                    viewportFraction: 1,
                    autoPlay: true,
                    enlargeFactor: 1),
                items: List.generate(state.sliders.length, (index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            state.sliders[index].image??"",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 14.h,
              ),
              AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: state.sliders.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.mainColor,
                      dotHeight: 7.h,
                      radius: 10))
            ],
          );
        }else {
          return Center(child: Text("Error"),);
        }
      },
    );
  }
}
