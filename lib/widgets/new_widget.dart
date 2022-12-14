import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class NewTile extends StatefulWidget {
  const NewTile({Key? key}) : super(key: key);

  @override
  State<NewTile> createState() => _NewTileState();
}

class _NewTileState extends State<NewTile> {
  bool tileExpand = false;

  toggleExpanded() {
    setState(() {
      tileExpand = !tileExpand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleExpanded(),
      child: Container(
        margin: EdgeInsets.only(left: 19.w, right: 19.h),
        height: tileExpand ? 345.h : 88.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xfffcfcfc),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1, color: Colors.grey[300]!)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 13.w,
                        height: 13.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          color: const Color(0xff7c827d),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/location.svg",
                          width: 9.w,
                          height: 9.w,
                          fit: BoxFit.none,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      CustomText(
                        fontWeight: FontWeight.w600,
                        text: "Hybrid",
                        fontSize: 12.sp,
                        color: const Color(0xff7c827d),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 8.5.w,
                      ),
                      SvgPicture.asset(
                        "assets/images/icons/forwards.svg",
                        color: const Color(0xff0089C8),
                      ),
                      SizedBox(
                        width: 8.5.w,
                      ),
                      Container(
                        width: 13.w,
                        height: 13.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          color: const Color(0xff7c827d),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/backloc.svg",
                          width: 9.w,
                          height: 9.w,
                          fit: BoxFit.none,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      CustomText(
                        fontWeight: FontWeight.w600,
                        text: "Dangote",
                        fontSize: 12.sp,
                        color: const Color(0xff7c827d),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    height: 18.h,
                    width: 72.w,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 18.h,
                          width: 34.w,
                          decoration: const BoxDecoration(
                              color: Color(0xff0089C8),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4))),
                          child: CustomText(
                              fontWeight: FontWeight.w700,
                              text: 'COCOA',
                              fontSize: 8.sp,
                              color: Colors.white,
                              textAlign: TextAlign.center),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 18.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff54565b),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4.r),
                                  bottomRight: Radius.circular(4.r))),
                          child: CustomText(
                              fontWeight: FontWeight.w700,
                              text: '1000 MT',
                              fontSize: 8.sp,
                              color: Colors.white,
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
              child: CustomText(
                  fontWeight: FontWeight.w400,
                  text: "OTC-363-22573378487015320",
                  fontSize: 14.sp,
                  color: const Color(0xff54565b),
                  textAlign: TextAlign.center),
            ),
            if (tileExpand)
              SizedBox(
                height: 16.h,
              ),
            if (tileExpand)
              Divider(
                color: const Color(0xff1d1b23).withOpacity(0.8),
                height: 20.h,
              ),
            if (tileExpand)
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15.h, 15.w, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 13.h,
                        ),
                        SvgPicture.asset(
                          "assets/images/icons/route.svg",
                          fit: BoxFit.none,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "logistics",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "ABC Transport Ltd",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 19.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "truck-num",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "CGE - 123XYZ",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 19.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "num-bags",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "300",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "driver",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "Aminu Amusat",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 35.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "driver-num",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "07034524534",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            SizedBox(
              height: 7.h,
            ),
            if (tileExpand)
              Divider(
                color: const Color(0xff1d1b23).withOpacity(0.2),
                height: 20.h,
              ),
            if (tileExpand)
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15.h, 15.w, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 13.h,
                        ),
                        SvgPicture.asset(
                          "assets/images/icons/route.svg",
                          fit: BoxFit.none,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "Logistics Company",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "ABC Transport Ltd",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 19.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "Truck No:",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "CGE - 123XYZ",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 19.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "No. of bags",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "300",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "Driver",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "Aminu Amusat",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 35.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "Driver's No.",
                                  fontSize: 10.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "07034524534",
                                  fontSize: 10.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            if (tileExpand)
              SizedBox(
                height: 20.h,
              ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffE8E8E8),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2.h,
                    horizontal: 15.w,
                  ),
                  child: Row(
                    children: [
                      CustomText(
                        fontWeight: FontWeight.w500,
                        text: "10:00AM",
                        fontSize: 8.sp,
                        color: Colors.grey[700],
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      CustomText(
                        fontWeight: FontWeight.w500,
                        text: "TUE 12 JAN, 2021",
                        fontSize: 8.sp,
                        color: Colors.grey[700],
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
