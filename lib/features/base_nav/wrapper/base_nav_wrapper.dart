import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/features/base_nav/widgets/nav_bar_widgets.dart';
import 'package:recreate_czar/features/chats/views/chats_view.dart';
import 'package:recreate_czar/features/exercises/views/exercises_view.dart';
import 'package:recreate_czar/features/games/views/games_view.dart';
import 'package:recreate_czar/features/home/views/learning_sphere_homepage_view.dart';
import 'package:recreate_czar/features/lesons/views/full_lesson_view.dart';
import 'package:recreate_czar/shared/app_constants.dart';
import 'package:recreate_czar/theme/color_palette.dart';
part 'base_nav_wrapper_controller.dart';

class BaseNavWrapper extends ConsumerWidget {
  const BaseNavWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int indexFromController = ref.watch(baseNavControllerProvider);
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Palette.scaffoldBackground,
        body: pages[indexFromController],
        bottomNavigationBar: Material(
          elevation: 40,
          shadowColor: Palette.blackColor,
          child: Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            color: Palette.scaffoldBackground,
            height: 60.h,
            width: width(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                nav.length,
                (index) => NavBarWidget(nav: nav[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}