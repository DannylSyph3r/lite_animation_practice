import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recreate_czar/features/streaks/views/streaks_view.dart';
import 'package:recreate_czar/shared/app_assets.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/shared/utils/nav.dart';
import 'package:recreate_czar/shared/widgets/sliverware_appbar.dart';
import 'package:recreate_czar/theme/color_palette.dart';
import 'package:badges/badges.dart' as badges;

class FullLessonView extends ConsumerWidget {
  const FullLessonView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Palette.scaffoldBackground,
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              SliverwareAppBar(
                  appBarToolbarheight: 70.h,
                  sliverCollapseMode: CollapseMode.parallax,
                  isPinned: true,
                  canStretch: false,
                  isFloating: true,
                  appBarColor: Palette.scaffoldBackground,
                  customizeLeadingWidget: false,
                  showLeadingIconOrWidget: false,
                  titleCentered: true,
                  isTitleAWidget: true,
                  titleWidget: Padding(
                    padding: 40.padH,
                    child: Container(
                      padding: 15.padH,
                      height: 35.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Palette.greyTextColor,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //! Flag
                            Row(
                              children: [
                                AppAssets.flag.myImage(
                                  height: 25.h,
                                ),
                                0.5.sbW,
                                PhosphorIconsFill.caretDown.iconizer(
                                    size: 15.sp, color: Palette.darkerGreyColor)
                              ],
                            ),

                            //! Streak Count
                            Row(
                              children: [
                                AppAssets.flame
                                    .myImage(height: 18.h, fit: BoxFit.fill),
                                4.sbW,
                                "2".txt18().alignBottomCenter()
                              ],
                            ).inkTap(onTap: () {
                              goTo(context: context, view: const StreaksView());
                            }),

                            //! Lesson count
                            Row(
                              children: [
                                AppAssets.dart
                                    .myImage(height: 20.h, fit: BoxFit.fill),
                                4.sbW,
                                "17".txt18().alignBottomCenter()
                              ],
                            ),

                            //! Notification icon
                            10.sbW,
                            AppAssets.notis.myImage(height: 25.h),
                          ]),
                    ),
                  ),
                  titleFontSize: 18.sp,
                  titleFontWeight: FontWeight.w600,
                  sliverBottom: AppBar(
                    centerTitle: true,
                    toolbarHeight: 70.h,
                    backgroundColor: Palette.scaffoldBackground,
                    automaticallyImplyLeading: false,
                    scrolledUnderElevation: 0,
                    title: Column(
                      children: [
                        10.sbH,
                        Padding(
                          padding: 5.padH,
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: Palette.scaffoldBackground,
                                border:
                                    Border.all(color: Palette.greyTextColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.r))),
                            child: Padding(
                              padding: 3.0.padA,

                              //! Audio & Video TabBar
                              child: TabBar(
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerColor: Colors.transparent,
                                indicator: BoxDecoration(
                                    color: Palette.speakSphereRed,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(22.r))),
                                labelColor: Palette.whiteColor,
                                labelStyle: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                unselectedLabelColor: Palette.darkerGreyColor,
                                unselectedLabelStyle: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                tabs: const [
                                  Tab(
                                    text: 'Audio Lesson',
                                  ),
                                  Tab(
                                    text: 'Video Lesson',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

              //! Lesson Banners
              SliverToBoxAdapter(
                child: Padding(
                  padding: 20.padH,
                  child: Column(children: [
                    30.sbH,

                    //! "First Trip" Banner
                    badges.Badge(
                      onTap: () {},
                      badgeContent: AppAssets.lessonOnePlayButton.mySvgImage().animate().shimmer(delay: 1.seconds, duration: 1.seconds),
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      position:
                          badges.BadgePosition.custom(bottom: -25, end: 5),
                      badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.transparent, padding: 5.0.padA),
                      stackFit: StackFit.passthrough,
                      child: SizedBox(
                        width: double.infinity,
                        height: 140.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          child: Stack(
                            children: [
                              AppAssets.lessonBannerOne
                                  .myImage(fit: BoxFit.cover, height: 140.h).animate().blurXY(delay: 700.milliseconds, duration: 1.seconds, begin: 0.0, end: 1.5),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 25.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "First Trip".txt24(
                                        color: Palette.whiteColor, fontW: F.w8),
                                    SizedBox(
                                        width: 190.w,
                                        child:
                                            "Here you will listen to conversations between tourists, and learn to speak together with them!"
                                                .txt12(
                                                    color: Palette.whiteColor,
                                                    fontW: F.w6))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    30.sbH,

                    //! "Freelance Work" Banner
                    badges.Badge(
                      onTap: () {},
                      badgeContent: AppAssets.lessonTwoPlayButton.mySvgImage().animate().shimmer(delay: 1.seconds, duration: 1.seconds),
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      position:
                          badges.BadgePosition.custom(bottom: -25, end: 5),
                      badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.transparent, padding: 5.0.padA),
                      stackFit: StackFit.passthrough,
                      child: SizedBox(
                        width: double.infinity,
                        height: 140.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          child: Stack(
                            children: [
                              AppAssets.lessonBannerTwo
                                  .myImage(fit: BoxFit.cover, height: 140.h).animate().blurXY(delay: 1500.milliseconds, duration: 1.seconds, begin: 0.0, end: 1.5),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 25.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Freelance Work".txt24(
                                        color: Palette.whiteColor, fontW: F.w8),
                                    SizedBox(
                                        width: 190.w,
                                        child:
                                            "After taking this classes, you will be able to take orders from foreigners!"
                                                .txt12(
                                                    color: Palette.whiteColor,
                                                    fontW: F.w6))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    30.sbH,

                    //! "First Meeting" Banner
                    badges.Badge(
                      onTap: () {},
                      badgeContent:
                          AppAssets.lessonThreePlayButton.mySvgImage().animate().shimmer(delay: 1.seconds, duration: 1.seconds),
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      position:
                          badges.BadgePosition.custom(bottom: -25, end: 5),
                      badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.transparent, padding: 5.0.padA),
                      stackFit: StackFit.passthrough,
                      child: SizedBox(
                        width: double.infinity,
                        height: 140.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          child: Stack(
                            children: [
                              AppAssets.lessonBannerThree
                                  .myImage(fit: BoxFit.cover, height: 140.h).animate().blurXY(delay: 2100.ms, duration: 1.seconds, begin: 0.0, end: 1.5),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 25.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "First Meeting".txt24(
                                        color: Palette.whiteColor, fontW: F.w8),
                                    SizedBox(
                                        width: 190.w,
                                        child:
                                            "You will learn to communicate with your colleagues and understand them!"
                                                .txt12(
                                                    color: Palette.whiteColor,
                                                    fontW: F.w6))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    30.sbH,

                    //! "Meeting with Patners" Banner
                    badges.Badge(
                      onTap: () {},
                      badgeContent: AppAssets.lessonFourPlayButton.mySvgImage().animate().shimmer(delay: 1.seconds, duration: 1.seconds),
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      position:
                          badges.BadgePosition.custom(bottom: -25, end: 5),
                      badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.transparent, padding: 5.0.padA),
                      stackFit: StackFit.passthrough,
                      child: SizedBox(
                        width: double.infinity,
                        height: 140.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          child: Stack(
                            children: [
                              AppAssets.lessonBannerFour
                                  .myImage(fit: BoxFit.cover, height: 140.h).animate().blurXY(delay: 2800.ms, duration: 1.seconds, begin: 0.0, end: 1.5),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 25.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Meeting with Patners".txt24(
                                        color: Palette.whiteColor, fontW: F.w8),
                                    SizedBox(
                                        width: 190.w,
                                        child:
                                            "You will learn to communicate with your colleagues and understand them!"
                                                .txt12(
                                                    color: Palette.whiteColor,
                                                    fontW: F.w6))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    50.sbH
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
