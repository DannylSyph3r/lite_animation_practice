import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/features/base_nav/wrapper/base_nav_wrapper.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class NavBarWidget extends HookConsumerWidget {
  final Nav nav;

  const NavBarWidget({
    Key? key,
    required this.nav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int indexFromController = ref.watch(baseNavControllerProvider);
    bool isSelected = indexFromController == nav.index;

    return SizedBox(
      width: 50.w,
      child: Column(
        children: [
          // Animated Item Indicator Container
          AnimatedContainer(
            duration: 350.milliseconds,
            height: 5.h,
            width: isSelected ? 50.w : 0,
            decoration: BoxDecoration(
              color: isSelected ? Palette.speakSphereRed : Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
            ),
          ),
          10.sbH,

          //! ICON
          SvgPicture.asset(
            nav.icon.iconSvg,
            color:
                isSelected ? Palette.speakSphereRed : Palette.darkerGreyColor,
            height: 40.h,
            width: 40.h,
          ),
        ],
      ),
    ).gestureTap(
      onTap: () {
        moveToPage(
          context: context,
          ref: ref,
          index: nav.index,
        );
      },
    );
  }
}
