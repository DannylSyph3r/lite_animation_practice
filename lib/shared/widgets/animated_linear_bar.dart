import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class AnimatedLinearProgressIndicator extends StatefulWidget {
  final int selectedItemCount;
  final int maxItemCount;

  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.selectedItemCount,
    required this.maxItemCount,
  }) : super(key: key);

  @override
  State<AnimatedLinearProgressIndicator> createState() => _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState extends State<AnimatedLinearProgressIndicator> {
  double widthProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 320.w,
      // ignore: sort_child_properties_last
      child: LayoutBuilder(
        builder: (context, constraints) {
          widthProgress = constraints.maxWidth / (widget.maxItemCount);
          return Stack(
            children: [
              AnimatedContainer(
                duration: 320.milliseconds,
                curve: Curves.easeOut,
                width: widthProgress * widget.selectedItemCount,
                decoration: BoxDecoration(
                  color: Palette.speakSphereRed,
                  borderRadius: BorderRadius.all(Radius.circular(18.r)),
                ),
              ),
            ],
          );
        },
      ),
      decoration: BoxDecoration(
        color: Palette.darkerGreyColor,
        borderRadius: BorderRadius.all(Radius.circular(27.r)),
      ),
    );
  }
}
