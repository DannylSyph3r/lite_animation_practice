import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recreate_czar/theme/color_palette.dart';
import 'package:recreate_czar/features/interests/views/lesson_interest_selection_view.dart';

void main() {
  runApp(const ProviderScope(child: SpeakSphereApp()));
}

class SpeakSphereApp extends HookConsumerWidget {
  const SpeakSphereApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'SpeakSphere',
            theme: ThemeData(
              textTheme: GoogleFonts.josefinSansTextTheme(),
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Palette.speakSphereRed),
              useMaterial3: true,
            ),
            home: const LessonInterestSelectionView(),
          );
        });
  }
}
