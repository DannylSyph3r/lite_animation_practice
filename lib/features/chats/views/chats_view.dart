import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recreate_czar/shared/app_assets.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class ChatsView extends ConsumerWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Palette.scaffoldBackground,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          120.sbH,

          //! Coding Bro Image Asset
          AppAssets.codingBro.myImage().alignCenter(),
          10.sbH,

          //! Animated Spin Circle
          Padding(
            padding: 40.padH,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SpinKitFadingCircle(
                  size: 25.sp,
                  color: Palette.speakSphereRed.withOpacity(0.3),
                ),
              ],
            ),
          ),

          //! "Coming Soon" Txt
          "Coming Soon!"
              .txt(size: 32.sp, fontW: F.w6, color: Palette.speakSphereRed),
          10.sbH,

          //! Description Txt
          Padding(
            padding: 40.padH,
            child: Row(
              children: [
                //! Lightning Bolt
                Column(
                  children: [
                    15.sbH,
                    PhosphorIconsFill.lightning
                        .iconizer(size: 30.sp, color: Palette.speakSphereRed),
                  ],
                ),
                30.sbW,

                SizedBox(
                    width: 195.w,
                    child: "We’ll be up soon, keep an eye on us."
                        .txt14(fontWeight: FontWeight.w400)),
              ],
            ).alignCenter(),
          )
        ]));
  }
}
