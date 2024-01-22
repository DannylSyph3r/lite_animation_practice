import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/shared/app_assets.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/shared/utils/nav.dart';
import 'package:recreate_czar/shared/widgets/app_buttons.dart';
import 'package:recreate_czar/theme/color_palette.dart';
import 'package:badges/badges.dart' as badges;

class StreaksView extends ConsumerWidget {
  const StreaksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: Center(
        child: Padding(
          padding: 20.padH,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  100.sbH,

                  //! Enlarged Streak Number
                  badges.Badge(
                    onTap: () {},
                    badgeContent: AppAssets.streaks.mySvgImage(),
                    badgeAnimation: const badges.BadgeAnimation.scale(),
                    position: badges.BadgePosition.custom(top: -4, start: -12),
                    badgeStyle: badges.BadgeStyle(
                        badgeColor: Colors.transparent, padding: 5.0.padA),
                    stackFit: StackFit.passthrough,
                    child: "2".txt(
                        size: 138.sp,
                        fontW: F.w6,
                        color: Palette.speakSphereRed),
                  )
                      .animate()
                      .shimmer(
                          delay: 100.ms,
                          duration: 1.seconds,
                          color: Palette.lighSpeakSphereRed)
                      .blur(delay: 1100.ms, duration: 300.milliseconds),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "days streak!"
                          .txt24(fontW: F.w5)
                          .animate()
                          .fadeInFromTop(delay: 800.ms)
                          .shimmer(
                              duration: 500.milliseconds,
                              color: Palette.lighSpeakSphereRed),
                      10.sbW,
                      Column(
                        children: [
                          AppAssets.flame
                              .myImage(height: 20.h, fit: BoxFit.fill)
                              .alignTopRight(),
                          8.sbH
                        ],
                      ).animate().fadeInFromTop(delay: 800.ms),
                    ],
                  ).animate().blur(delay: 1100.ms, duration: 300.milliseconds),
                  30.sbH,

                  //! Graphic for  Streak Day Tracking
                  Container(
                    height: 170.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.220),
                        borderRadius: BorderRadius.all(Radius.circular(20.r))),
                    child: Padding(
                      padding: 12.padH,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            27.sbH,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Mon"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 1100.ms, duration: 400.ms)
                                    .flipH(delay: 1400.ms, duration: 400.ms)
                                    .shimmer(
                                        delay: 1600.ms, duration: 1.seconds)
                                    .tint(
                                        delay: 1900.ms,
                                        duration: 400.ms,
                                        color: Palette.speakSphereRed),
                                "Tue"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 2200.ms, duration: 400.ms)
                                    .flipH(delay: 2500.ms, duration: 400.ms)
                                    .shimmer(
                                        delay: 2700.ms, duration: 1.seconds)
                                    .tint(
                                        delay: 3000.ms,
                                        duration: 400.ms,
                                        color: Palette.speakSphereRed),
                                "Wed"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 3700.ms, duration: 400.ms)
                                    .shimmer(
                                        delay: 3900.ms, duration: 1.seconds),
                                "Thu"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 4700.ms, duration: 400.ms),
                                "Fri"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 5700.ms, duration: 400.ms),
                                "Sat"
                                    .txt20(
                                        color: Palette.darkerGreyColor,
                                        fontW: F.w5)
                                    .animate()
                                    .fadeIn(delay: 6700.ms, duration: 400.ms),
                              ],
                            ),
                            Padding(
                              padding: 5.padH,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                    child: AppAssets.streaks
                                        .mySvgImage(
                                          colorFilter: const ColorFilter.mode(
                                              Palette.darkerGreyColor,
                                              BlendMode.srcIn),
                                        )
                                        .animate()
                                        .shimmer(
                                            delay: 1600.ms, duration: 1.seconds)
                                        .tint(
                                            delay: 1900.ms,
                                            duration: 400.ms,
                                            color: Palette.speakSphereRed),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                    child: AppAssets.streaks
                                        .mySvgImage(
                                          colorFilter: const ColorFilter.mode(
                                              Palette.darkerGreyColor,
                                              BlendMode.srcIn),
                                        )
                                        .animate()
                                        .shimmer(
                                            delay: 2700.ms, duration: 1.seconds)
                                        .tint(
                                            delay: 3000.ms,
                                            duration: 400.ms,
                                            color: Palette.speakSphereRed),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                    child: AppAssets.streaks
                                        .mySvgImage()
                                        .animate()
                                        .shimmer(
                                            delay: 3600.ms,
                                            duration: 1.seconds),
                                  ),
                                  SizedBox(
                                      width: 20.w,
                                      child: AppAssets.streaks.mySvgImage()),
                                  SizedBox(
                                      width: 20.w,
                                      child: AppAssets.streaks.mySvgImage()),
                                  SizedBox(
                                      width: 20.w,
                                      child: AppAssets.streaks.mySvgImage()),
                                ],
                              ),
                            ),
                            25.sbH,

                            //! Encouragment text
                            "You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points."
                                .txt12(textAlign: TextAlign.center, fontW: F.w6)
                                .animate()
                                .fadeIn(delay: 7900.ms, duration: 400.ms)
                                .shimmer(
                                    delay: 8100.ms,
                                    duration: 1.seconds,
                                    color: Palette.lighSpeakSphereRed)
                          ]),
                    ),
                  ).animate()
                  .fadeIn(delay: 1050.ms, duration: 200.ms),
                ],
              ),
              Column(
                children: [
                  //! "Continue" Button
                  AppButton(
                    onTap: () {
                      goBack(context);
                    },
                    text: "Continue",
                  ).animate().fadeIn(delay: 8700.ms, duration: 400.ms),
                  30.sbH,

                  //! "Skip for Now txt"
                  "Share".txt20(
                      fontWeight: FontWeight.w500,
                      color: Palette.speakSphereRed),
                  20.sbH
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
