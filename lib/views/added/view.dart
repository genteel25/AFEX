import 'package:easy_localization/easy_localization.dart';
import 'package:exercise/mvc/mvc.dart';
import 'package:exercise/views/added/controller.dart';
import 'package:exercise/widgets/custom_form_field.dart';
import 'package:exercise/widgets/custom_text.dart';
import 'package:exercise/widgets/new_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewView extends StatelessView<NewScreen, NewController> {
  const NewView(NewController state, {Key? key}) : super(state, key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Container(
                  color: const Color(0xff54565B),
                  height: 117.h,
                  // padding: REdgeInsets.symmetric(
                  //   horizontal: 16,
                  //   vertical: 14,
                  // ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -63,
                        child: SvgPicture.asset(
                          "assets/images/new_back.svg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              Image.asset(
                                "assets/images/notification.png",
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(45.r)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45.r),
                                  child: Image.asset(
                                    width: 45.w,
                                    height: 45.h,
                                    "assets/images/profi.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                      fontWeight: FontWeight.w500,
                                      text: "Hey, Mercy 👋🏼",
                                      fontSize: 18.sp,
                                      color: Colors.white,
                                      textAlign: TextAlign.center)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            margin: REdgeInsets.only(left: 52),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'There are'.tr(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              TextSpan(
                                text: ' 6 '.tr(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'active OTC contract'.tr(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ])),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchFormField(
                    label: "Search by contract ID or name...",
                    suffixIcon: SvgPicture.asset(
                      'assets/iconss/search.svg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: NewTile(),
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}
