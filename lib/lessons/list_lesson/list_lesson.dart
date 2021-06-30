import 'package:angela_yu_flutter_cource/export.dart';
import 'package:angela_yu_flutter_cource/lessons/inherited_widget_lesson/inherited_widget_lesson.dart';

class ListLesson extends StatelessWidget {
  static const id = 'listLesson';
  const ListLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              WrapperListTitle(
                title: S.of(context).scratch,
                onTap: () => Navigator.pushNamed(context, Scratch.id),
              ),
              WrapperListTitle(
                  title: 'Inherited Widget Lesson',
                  onTap: () {
                    Navigator.pushNamed(context, InheritedWidgetLesson.id);
                  }),
              WrapperListTitle(
                title: S.of(context).lesson_1,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Lesson1(),
                    ),
                  );
                },
              ),
              WrapperListTitle(
                title: S.of(context).lesson_15,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute<void>(builder: (c) => const Lesson15()));
                },
              ),
              WrapperListTitle(
                title: S.of(context).Lesson_3,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute<void>(builder: (context) => const Lesson31()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
