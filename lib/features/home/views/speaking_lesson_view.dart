import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recreate_czar/providers/app_providers.dart';
import 'package:recreate_czar/shared/app_assets.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/shared/utils/nav.dart';
import 'package:recreate_czar/shared/widgets/animated_linear_ticker.dart';
import 'package:recreate_czar/shared/widgets/animated_scale.dart';
import 'package:recreate_czar/shared/widgets/app_buttons.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class SpeakingLessonView extends StatefulHookConsumerWidget {
  const SpeakingLessonView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SpeakingLessonViewState();
}

class _SpeakingLessonViewState extends ConsumerState<SpeakingLessonView> {
  @override
  Widget build(BuildContext context) {
    final bool micIconTapped = ref.watch(animationTriggerProvider);
    final bool textAnimationTrigger =
        ref.watch(lessonTextanimationTriggerProvider);
    return Scaffold(

      //! Animated Ticker AppBar
      appBar: AppBar(
        toolbarHeight: 70.h,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: PhosphorIconsBold.caretLeft.iconizer(size: 20.sp).gestureTap(
            onTap: () {
          goBack(context);
          ref.invalidate(animationTriggerProvider);
          ref.invalidate(lessonTextanimationTriggerProvider);
        }),
        backgroundColor: Palette.scaffoldBackground,
        centerTitle: false,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(right: 40.w),
          child: Opacity(
            opacity: micIconTapped ? 1.0 : 0.0,
            child: const AnimatedTicker(animationDurationInSeconds: 7)
                .alignCenterLeft(),
          ),
        ),
      ),
      backgroundColor: Palette.scaffoldBackground,
      body: Padding(
        padding: 17.padH,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  10.sbH,
                  "Speak this Sentence"
                      .txt20(fontW: F.w6, color: Palette.greyTextColor)
                      .alignCenterLeft(),
                  45.sbH,
                  CircleAvatar(
                    radius: 17.w,
                    backgroundColor: Palette.speakSphereRed,
                    child: PhosphorIconsBold.speakerHigh
                        .iconizer(size: 15.sp, color: Palette.whiteColor),
                  ).alignCenter(),
                  30.sbH,

                  //! Sppeaking test lesson sentence
                  "Bonjour, Buchi, enchante"
                      .txt20(
                          fontW: F.w6,
                          color: Palette.greyTextColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Palette.greyTextColor)
                      .alignCenter()
                      .animate()
                      .fadeIn(delay: 250.ms, duration: 150.milliseconds)
                      .slideY(),
                ],
              ),
              
              //! Animated MIcrophone Icon
              ScalerAnimation(theAnimatedChild: AppAssets.pngMic.myImage()),
              Column(
                children: [

                  //! Staggered Animated Texts
                  AnimatedOpacity(
                    duration: 1.seconds,
                    curve: Curves.easeInOut,
                    opacity: textAnimationTrigger ? 1.0 : 0.0,
                    child: "Brilliant!"
                        .txt20(fontW: F.w7, color: Palette.greyTextColor)
                        .alignCenterLeft(),
                  ),
                  15.sbH,
                  AnimatedOpacity(
                    duration: 3.seconds,
                    curve: Curves.easeInOut,
                    opacity: textAnimationTrigger ? 1.0 : 0.0,
                    child: "Meaning:"
                        .txt16(fontW: F.w5, color: Palette.greyTextColor)
                        .alignCenterLeft(),
                  ),
                  15.sbH,
                  AnimatedOpacity(
                    duration: 5.seconds,
                    curve: Curves.easeInOut,
                    opacity: textAnimationTrigger ? 1.0 : 0.0,
                    child: "Hello, Buchi nice to meet you"
                        .txt16(fontW: F.w5, color: Palette.greyTextColor)
                        .alignCenterLeft(),
                  ),
                  40.sbH,

                  //! "Continue" Button 
                  Padding(
                    padding: 20.padH,
                    child: AppButton(
                      onTap: () {
                        goBack(context);
                      },
                      text: "Continue",
                    ),
                  ),
                  30.sbH,
                ],
              )
            ]),
      ),
    );
  }
}
