import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/providers/app_providers.dart';
import 'package:recreate_czar/shared/app_extensions.dart';

class ScalerAnimation extends ConsumerStatefulWidget {
  final Widget theAnimatedChild;
  const ScalerAnimation({required this.theAnimatedChild, Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScalerAnimationState();
}

class _ScalerAnimationState extends ConsumerState<ScalerAnimation> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: 800.milliseconds,
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = Tween<double>(begin: 1.0, end: 1.3).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   void _stopAnimation() {
    _controller.stop(); // Stop the animation when called
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.theAnimatedChild,
    ).gestureTap(onTap: (){
      _stopAnimation();
      ref.read(animationTriggerProvider.notifier).update((state) => true);
    });
  }
}
