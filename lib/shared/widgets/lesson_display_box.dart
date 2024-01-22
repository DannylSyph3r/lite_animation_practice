import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class LessonDisplayBox extends StatefulWidget {
  final String svgCategoryImage;
  final String lessonName;
  final double completionPercentage;

  const LessonDisplayBox({
    Key? key,
    required this.svgCategoryImage,
    required this.lessonName,
    required this.completionPercentage,
  }) : super(key: key);

  @override
  State<LessonDisplayBox> createState() => _LessonDisplayBoxState();
}

class _LessonDisplayBoxState extends State<LessonDisplayBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: 2000.milliseconds,
      vsync: this,
    );

    // Uncomment the line below if you want the animation to start immediately
    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
        border: Border.all(color: Palette.speakSphereRed),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Padding(
        padding: 15.padH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.sbH,
            widget.svgCategoryImage.mySvgImage(),
            5.sbH,
            widget.lessonName.txt20(fontW: F.w7),
            5.sbH,
            "You completed ${widget.completionPercentage.toInt().toString()}%"
                .txt14(fontW: F.w6, color: Palette.darkerGreyColor),
            10.sbH,
            LayoutBuilder(builder: (context, constraints) {
              return TweenAnimationBuilder(
                tween: Tween<double>(
                  begin: 0.0,
                  end: widget.completionPercentage / 100.0,
                ),
                duration: 2000.milliseconds,
                builder: (context, double value, child) {
                  return Stack(
                    children: [
                      Container(
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Palette.darkerGreyColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                        child: FractionallySizedBox(
                          widthFactor: value,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Palette.speakSphereRed,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                          ),
                        ).animate().shimmer(delay: 3.5.seconds, duration: 1.seconds, color: Palette.lighSpeakSphereRed),
                      ),
                    ],
                  );
                },
              );
            })
          ],
        ),
      ),
    ).animate().fadeIn(delay: 200.ms, curve: Curves.fastEaseInToSlowEaseOut, duration: 200.ms).slideX();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
