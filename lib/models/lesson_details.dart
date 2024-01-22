import 'package:recreate_czar/shared/app_assets.dart';

class LessonDetails {
  final String svgCategoryImage;
  final String lessonName;
  final double completionPercentage;

  LessonDetails({
    required this.svgCategoryImage,
    required this.lessonName,
    required this.completionPercentage,
  });
}

List<LessonDetails> lessonDetailList = [
  LessonDetails(
      svgCategoryImage: AppAssets.reading,
      lessonName: "Reading",
      completionPercentage: 50),
  LessonDetails(
      svgCategoryImage: AppAssets.listening,
      lessonName: "Listening",
      completionPercentage: 50),
  LessonDetails(
      svgCategoryImage: AppAssets.writing,
      lessonName: "Writing",
      completionPercentage: 70),
  LessonDetails(
      svgCategoryImage: AppAssets.speaking,
      lessonName: "Speaking",
      completionPercentage: 25),
  LessonDetails(
      svgCategoryImage: AppAssets.books,
      lessonName: "Books",
      completionPercentage: 80),
  LessonDetails(
      svgCategoryImage: AppAssets.quizzes,
      lessonName: "Quizzes",
      completionPercentage: 40),
];
