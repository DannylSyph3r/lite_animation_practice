import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recreate_czar/features/base_nav/wrapper/base_nav_wrapper.dart';
import 'package:recreate_czar/providers/app_providers.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/shared/utils/nav.dart';
import 'package:recreate_czar/shared/widgets/app_buttons.dart';
import 'package:recreate_czar/shared/widgets/animated_linear_bar.dart';
import 'package:recreate_czar/shared/widgets/frosted_glass_box.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class LessonInterestSelectionView extends StatefulHookConsumerWidget {
  const LessonInterestSelectionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LessonInterestSelectionViewState();
}

class _LessonInterestSelectionViewState
    extends ConsumerState<LessonInterestSelectionView> {
  final ValueNotifier<bool> isDialogOpen = false.notifier;

  @override
  void dispose() {
    isDialogOpen.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> lessonInterests = ref.watch(lessonInterestListProvider);
    final List<String> selectedLessonInterests =
        ref.watch(selectedLessonInterestListProvider);

    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  50.sbH,

                  //! Lesson Selection Progress Bar
                  Padding(
                    padding: 9.padH,
                    child: Row(
                      children: [
                        PhosphorIconsBold.caretLeft
                            .iconizer(size: 20.sp, color: Palette.blackColor),
                        5.sbW,
                        AnimatedLinearProgressIndicator(
                            selectedItemCount: selectedLessonInterests.length,
                            maxItemCount: 6),
                        8.sbW,
                        "${selectedLessonInterests.length}/6"
                            .txt(size: 13.sp, fontW: F.w6)
                      ],
                    ),
                  ),
                  30.sbH,

                  //! Title Texts
                  Padding(
                    padding: 9.padH,
                    child: "What interests you?"
                        .txt20(fontW: F.w6)
                        .alignCenterLeft(),
                  ),
                  9.sbH,

                  //! Subtitle Text
                  Padding(
                    padding: 10.padH,
                    child: "Select all that applies"
                        .txt(
                            size: 13.sp,
                            color: Palette.greyTextColor,
                            fontW: F.w6)
                        .alignCenterLeft(),
                  ),
                  25.sbH,

                  //! Interest Selection block
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 30.w),
                    child: Wrap(
                        spacing: 10.w,
                        runSpacing: 10.h,
                        children:
                            List.generate(lessonInterests.length, (index) {
                          final isSelected = selectedLessonInterests
                              .contains(lessonInterests[index]);
                          return isSelected
                              ? Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.w, vertical: 9.h),
                                  decoration: BoxDecoration(
                                      color: isSelected
                                          ? Palette.lighSpeakSphereRed
                                          : Palette.whiteColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(27.r)),
                                      border: Border.all(
                                          color: isSelected
                                              ? Palette.speakSphereRed
                                              : Palette.lighSpeakSphereRed)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      lessonInterests[index].txt(
                                        size: 15.sp,
                                        fontWeight: FontWeight.w800,
                                        color: isSelected
                                            ? Palette.whiteColor
                                            : Palette.blackColor,
                                      ),
                                    ],
                                  ),
                                ).inkTap(onTap: () {
                                  ref
                                      .read(selectedLessonInterestListProvider
                                          .notifier)
                                      .toggleInterest(lessonInterests[index]);
                                })
                              : DottedBorder(
                                  padding: EdgeInsets.all(0.5.w),
                                  strokeWidth: 1.7,
                                  dashPattern: const [6, 3.5],
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(27.r),
                                  color: Palette.speakSphereRed,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(27.r)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 9.w, vertical: 9.h),
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? Palette.lighSpeakSphereRed
                                            : Palette.whiteColor,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          lessonInterests[index].txt(
                                            size: 15.sp,
                                            fontWeight: FontWeight.w800,
                                            color: isSelected
                                                ? Palette.whiteColor
                                                : Palette.blackColor,
                                          ),
                                        ],
                                      ),
                                    ).inkTap(onTap: () {
                                      ref
                                          .read(
                                              selectedLessonInterestListProvider
                                                  .notifier)
                                          .toggleInterest(
                                              lessonInterests[index]);
                                    }),
                                  ),
                                );
                        })),
                  ),
                  15.sbH,

                  //! "Add Other +" button
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: 12.padH,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 9.h),
                            decoration: BoxDecoration(
                                color: Palette.lighSpeakSphereRed,
                                borderRadius: BorderRadius.circular(27.r),
                                border:
                                    Border.all(color: Palette.speakSphereRed)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                "Add other +".txt(
                                    size: 15.sp,
                                    fontWeight: FontWeight.w800,
                                    color: Palette.whiteColor),
                              ],
                            )),
                      ),
                    ],
                  ).alignCenterLeft(),
                ],
              ),
              Column(
                children: [
                  //! "Continue Button"
                  Padding(
                    padding: 20.padH,
                    child: AppButton(
                      onTap: selectedLessonInterests.length == 6
                          ? () {
                              goTo(
                                  context: context,
                                  view: const BaseNavWrapper());
                            }
                          : null,
                      text: "Continue",
                    ),
                  ),
                  20.sbH,

                  //! "Skip for Now txt"
                  "Skip for now"
                      .txt20(
                          fontWeight: FontWeight.w500,
                          color: Palette.speakSphereRed)
                      .gestureTap(
                          onTap: () =>
                              isDialogOpen.value = !isDialogOpen.value),
                  30.sbH
                ],
              )
            ],
          ),
          Positioned.fill(
            child: isDialogOpen.sync(builder: (context, isVisible, child) {
              return Visibility(
                visible: isVisible,
                child: FrostedGlassBox(
                  theWidth: MediaQuery.of(context).size.width,
                  theHeight: MediaQuery.of(context).size.height,
                  theChild: AlertDialog(
                    backgroundColor: Palette.whiteColor.withOpacity(0.8),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PhosphorIconsRegular.warningCircle.iconizer(),
                        7.sbW,
                        "Confirm Action".txt16(fontWeight: FontWeight.bold),
                      ],
                    ),
                    content: "Are you sure you want to skip?".txt18(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            isDialogOpen.value = !isDialogOpen.value;
                          },
                          child: "Cancel".txt16(fontW: F.w7)),
                      TextButton(
                          onPressed: () {
                            goTo(
                                context: context, view: const BaseNavWrapper());
                          },
                          child: "Yes, I'm sure!".txt16(fontW: F.w7)),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
