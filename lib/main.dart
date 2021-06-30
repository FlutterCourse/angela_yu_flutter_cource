import 'package:angela_yu_flutter_cource/lessons/inherited_widget_lesson/inherited_widget_lesson.dart';
import 'package:angela_yu_flutter_cource/provider/brightness_provider.dart';
import 'package:provider/provider.dart';

import 'export.dart';

int main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (c) => BrightnessProvider(),
        ),
      ],
      builder: (c, _) => const Main(),
    ),
  );
  return 0;
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        brightness: context.watch<BrightnessProvider>().brightness,
        scaffoldBackgroundColor: context.watch<BrightnessProvider>().colorScheme().background,
        primaryColor: context.watch<BrightnessProvider>().colorScheme().primary,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: {
        Scratch.id: (context) => const Scratch(),
        ListLesson.id: (context) => const ListLesson(),
        InheritedWidgetLesson.id: (context) => const InheritedWidgetLesson(),
      },
      initialRoute: ListLesson.id,
    );
  }
}
