import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recreate_czar/features/home/views/speaking_lesson_view.dart';
import 'package:recreate_czar/features/streaks/views/streaks_view.dart';
import 'package:recreate_czar/models/lesson_details.dart';
import 'package:recreate_czar/shared/app_assets.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/shared/utils/nav.dart';
import 'package:recreate_czar/shared/widgets/lesson_display_box.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class LearningSphereView extends StatefulHookConsumerWidget {
  const LearningSphereView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LearningSphereViewState();
}

class _LearningSphereViewState extends ConsumerState<LearningSphereView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: ListView(padding: 17.padH, children: [
        60.sbH,

        //! Header Display Box
        Row(
          children: [
            Expanded(
              child: Container(
                padding: 15.padH,
                height: 35.h,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Palette.greyTextColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
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
            15.sbW,

            //! User Avatar
            CircleAvatar(
                radius: 20.w, child: AppAssets.avatar.myImage(height: 55.h))
          ],
        ),
        40.sbH,

        //! Learning Sphere label text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Your".txt(
                size: 32,
                color: Palette.speakSphereRed,
                fontWeight: FontWeight.w900).animate().fadeIn(delay: 50.ms, curve: Curves.fastEaseInToSlowEaseOut, duration: 100.ms).slideX().shimmer(delay: 4.seconds, duration: 700.ms, color: Palette.lighSpeakSphereRed),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Learning Sphere".txt(
                size: 32,
                color: Palette.speakSphereRed,
                fontWeight: FontWeight.w900).animate().fadeIn(delay: 200.ms, curve: Curves.fastEaseInToSlowEaseOut, duration: 100.ms).slideX().shimmer(delay: 4.4.seconds, duration: 700.ms, color: Palette.lighSpeakSphereRed),
            AppAssets.learningCube.myImage(
              height: 30.h,
            ).animate().rotate(delay: 4.5.seconds, duration: 300.ms)
          ],
        ).animate().fadeIn(delay: 200.ms, curve: Curves.fastEaseInToSlowEaseOut, duration: 200.ms).slideX(),

        //! Lesson Display Boxes
        ListView.builder(
            padding: 0.0.padA,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: (lessonDetailList.length / 2).ceil(),
            itemBuilder: (context, index) {
              final int startIndex = index * 2;
              final List<LessonDetails> currentRowLessons =
                  lessonDetailList.sublist(
                startIndex,
                startIndex + 2 < lessonDetailList.length
                    ? startIndex + 2
                    : lessonDetailList.length,
              );

              return Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: 20.padV,
                      child: LessonDisplayBox(
                        svgCategoryImage: currentRowLessons[0].svgCategoryImage,
                        lessonName: currentRowLessons[0].lessonName,
                        completionPercentage:
                            currentRowLessons[0].completionPercentage,
                      ),
                    ),
                  ),
                  if (currentRowLessons.length ==
                      2) // Ensure there are two lessons
                    35.sbW,
                  if (currentRowLessons.length ==
                      2) // Ensure there are two lessons
                    Expanded(
                      child: Padding(
                        padding: 20.padV,
                        child: LessonDisplayBox(
                          svgCategoryImage:
                              currentRowLessons[1].svgCategoryImage,
                          lessonName: currentRowLessons[1].lessonName,
                          completionPercentage:
                              currentRowLessons[1].completionPercentage,
                        ).inkTap(
                          onTap: index ==
                                  1 // Adjusted index to 1 for the second item on the second row
                              ? () {
                                  goTo(
                                      context: context,
                                      view: const SpeakingLessonView());
                                }
                              : () {},
                        ),
                      ),
                    ),
                ],
              );
            })
      ]),
    );
  }
}
