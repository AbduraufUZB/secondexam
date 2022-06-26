import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/mock/mock_model.dart';
import 'package:secondexam/mock/organic_mock.dart';
import 'package:secondexam/widgets/organic_card_widget.dart';

class CategoryView extends StatelessWidget {
  CategoryView({Key? key}) : super(key: key);
  List lst = OrganicMock.organic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 65.h,
              width: 414.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10.w),
                      const Icon(Icons.chevron_left),
                      SizedBox(width: 10.w),
                      Text(
                        "Category",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: FontConst.kMediumFont.sp),
                      ),
                    ],
                  ),
                  const Icon(Icons.filter_alt_outlined)
                ],
              ),
            ),
            SizedBox(
              height: 790.h,
              width: 414.w,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  itemCount: OrganicMock.organic.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 28,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (ctx, i) {
                    MockModel mockModel =
                        MockModel.fromJson(OrganicMock.organic[i]);
                    return SizedBox(
                      child: OrganicCardWidget(
                          name: mockModel.name!,
                          image: "${mockModel.image!}$i",
                          price: mockModel.price!,
                          txt: mockModel.txt!,
                          color: ColorConst.kGreenColor.withOpacity(0.3)),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
