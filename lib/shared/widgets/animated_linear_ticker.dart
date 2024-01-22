import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/providers/app_providers.dart';
import 'package:recreate_czar/shared/app_extensions.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class AnimatedTicker extends ConsumerStatefulWidget {
  final int animationDurationInSeconds;
  const AnimatedTicker({
    Key? key,
    required this.animationDurationInSeconds,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnimatedTickerState();
}

class _AnimatedTickerState extends ConsumerState<AnimatedTicker>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.animationDurationInSeconds),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation has completed
        ref.read(lessonTextanimationTriggerProvider.notifier).update((state) => true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(animationTriggerProvider, (previous, state) {
      if (previous != null && !previous && state) {
        // AnimationTriggerProvider changed from false to true
        // Start your animation here
        _controller.forward();
      }
    });

    return Container(
      height: 8.h,
      width: 320.w,
      // ignore: sort_child_properties_last
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Stack(
            children: [
              Container(
                width: _animation.value * 320.w,
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
    ).gestureTap(onTap: () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
