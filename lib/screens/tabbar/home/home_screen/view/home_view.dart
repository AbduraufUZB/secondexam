import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/mock/mock_model.dart';
import 'package:secondexam/mock/organic_mock.dart';
import 'package:secondexam/widgets/organic_card_widget.dart';
import 'package:secondexam/widgets/vegetable_item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 166.h,
              width: 414.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 4.h),
                  Text(
                    "Your Location",
                    style: TextStyle(
                        color: ColorConst.kTextSecondaryColor,
                        fontSize: FontConst.kSmallFont.sp),
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bandung, Cimahi",
                          style: TextStyle(fontSize: FontConst.kMediumFont.sp)),
                      SizedBox(width: 15.w),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConst.kTextSecondaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100.r)),
                    height: 48.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search anything here",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 76.h,
              width: 414.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 44.h,
                    width: 44.h,
                    decoration: BoxDecoration(
                        color: ColorConst.kTextSecondaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: const Center(
                      child: Icon(Icons.confirmation_num_outlined),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You have 3 coupon",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: FontConst.kMediumFont.sp)),
                      Text("Let’s use this coupon",
                          style: TextStyle(
                              fontSize: FontConst.kSmallFont.sp,
                              color: ColorConst.kTextSecondaryColor)),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.chevron_right),
                        SizedBox(width: 32.w)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 215.h,
              width: 414.w,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  textSet("Choose Category"),
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 136.h,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        return VegetableItemWidget(i: i);
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 365.h,
              width: 414.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  textSet("Best Selling"),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 220.h,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: OrganicMock.organic.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        MockModel mockModel =
                            MockModel.fromJson(OrganicMock.organic[i]);
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: OrganicCardWidget(
                              name: mockModel.name!,
                              image: "${mockModel.image!}$i",
                              price: mockModel.price!,
                              txt: mockModel.txt!,
                              color: ColorConst.kGreenColor.withOpacity(0.3)),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget textSet(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: FontConst.kMediumFont.sp),
        ),
        const Text(
          "See All",
          style: TextStyle(color: ColorConst.kTextSecondaryColor),
        ),
      ],
    );
  }
}
