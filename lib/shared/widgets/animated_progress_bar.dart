import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class AnimatedLinearProgressBar extends StatelessWidget {
  final int maxItems;
  final int selectedItemCount;

  const AnimatedLinearProgressBar({
    super.key,
    required this.maxItems,
    required this.selectedItemCount,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: 1.seconds, // Adjust the duration as needed
      tween: ColorTween(
        begin: Palette.darkerGreyColor, // Initial color
        end: Palette.speakSphereRed, // Final color
      ),
      curve: Curves.easeOut, // Use a custom easing curve for a smoother animation
      builder: (context, color, child) {
        return LinearProgressIndicator(
          value: selectedItemCount / maxItems,
          backgroundColor: Palette.darkerGreyColor,
          borderRadius: BorderRadius.circular(20.r),
          color: color,
        );
      },
    );
  }
}
