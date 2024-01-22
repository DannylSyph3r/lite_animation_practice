import 'package:hooks_riverpod/hooks_riverpod.dart';

// Lesson Interest List Notifer Class

class LessonInterestList extends Notifier<List<String>> {
  @override
  List<String> build() => [
        "Studies",
        "Reading",
        "Technologies",
        "Travel",
        "Psychology",
        "Gaming",
        "TV/Movies",
        "Sports",
        "Languages",
        "Fashion",
        "Fitness",
        "Pets",
        "Food",
        "Climate Change",
        "Self-care",
        "Work life",
        "Culture",
        "Design",
        "Sociology",
        "Music",
        "Outdoor",
        "Networking",
        "Romance",
        "Shopping",
        "Sight-seeing"
      ];
}

// Selected Lesson Interest List Notifer Class

class SelectedLessonInterestList extends Notifier<List<String>> {
  @override
  List<String> build() => [];

  void toggleInterest(String interest) {
    if (state.contains(interest)) {
      state = state.where((item) => item != interest).toList();
    } else {
      if (state.length < 6) {
        state = [...state, interest];
      } else {
        // Remove the item at index 0 to make room for the new interest
        state = [...state.sublist(1), interest];
      }
    }
  }
}

//! Providers <>

final animationTriggerProvider = StateProvider<bool>((ref) => false);

final lessonTextanimationTriggerProvider =StateProvider<bool>((ref) => false);

final lessonInterestListProvider =
    NotifierProvider<LessonInterestList, List<String>>(LessonInterestList.new);

final selectedLessonInterestListProvider =
    NotifierProvider<SelectedLessonInterestList, List<String>>(
        SelectedLessonInterestList.new);
