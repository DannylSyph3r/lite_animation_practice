part of 'base_nav_wrapper.dart';

//! the state notifier provider for controlling the state of the base nav wrapper

final baseNavControllerProvider =
    StateNotifierProvider<BaseNavController, int>((ref) {
  return BaseNavController();
});

//! the state notifier class for controlling the state of the base nav wrapper
class BaseNavController extends StateNotifier<int> {
  BaseNavController() : super(0);

  //! move to page
  void moveToPage({required int index}) {
    state = index;
  }
}

//! () => move to page
void moveToPage({
  required BuildContext context,
  required WidgetRef ref,
  required int index,
}) {
  ref.read(baseNavControllerProvider.notifier).moveToPage(index: index);
}

//! List of pages
List<Widget> pages = [
  const LearningSphereView(),
  const FullLessonView(),
  const ExercisesView(),
  const GamesView(),
  const ChatsView()
];

//! nav widget enums
// enum Nav {
//   home('Home', 'home'),
//   lessons('Lessons', 'lessons'),
//   exercises('Exercises', 'exercises'),
//   games('Games', 'games'),
//   chats('Chats', 'chats');


//   const Nav(
//     this.label,
//     this.icon,
//   );
//   final String label;
//   final String icon;
// }

enum Nav{
  home('home'),
  lessons('lessons'),
  exercises('exercises'),
  games('games'),
  chats('chats');


  const Nav(
    this.icon,
  );
  final String icon;
}


List<Nav> nav = [
  Nav.home,
  Nav.lessons,
  Nav.exercises,
  Nav.games,
  Nav.chats,
];