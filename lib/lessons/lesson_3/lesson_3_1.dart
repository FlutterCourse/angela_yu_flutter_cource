import 'package:angela_yu_flutter_cource/export.dart';
import 'package:angela_yu_flutter_cource/path/path.dart';
import 'package:angela_yu_flutter_cource/provider/brightness_provider.dart';

class Lesson31 extends StatefulWidget {
  static const id = 'Lesson31';
  const Lesson31({Key? key}) : super(key: key);

  @override
  _Lesson31State createState() => _Lesson31State();
}

class _Lesson31State extends State<Lesson31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeLesson3.colorScheme.primary,
        title: Text(
          S.current.iAmRich,
          style: ThemeLesson3.textStyle.roboto25w700,
        ),
      ),
      body: Center(
        child: Image.asset(KImagePath.diamant),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeLesson3.colorScheme.primary,
        onPressed: () {
          context.read<BrightnessProvider>().onChangeBrightness();
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: ThemeLesson3.colorScheme.background,
    );
  }
}
