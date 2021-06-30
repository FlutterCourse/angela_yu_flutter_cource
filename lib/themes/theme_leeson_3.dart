import 'package:angela_yu_flutter_cource/export.dart';

class ThemeLesson3 {
  static Brightness brightness = Brightness.dark;

  static ColorScheme get colorScheme => ColorScheme.dark(
        background: brightness == Brightness.dark ? Colors.blueGrey : Colors.lightBlue,
        primary: brightness == Brightness.dark ? Colors.blueGrey.shade900 : Colors.blue,
        onPrimary: brightness == Brightness.dark ? Colors.white : Colors.black,
      );
  static KTextStyleLesson3 get textStyle => KTextStyleLesson3();
}

class KTextStyleLesson3 {
  KTextStyleLesson3();
  TextStyle get roboto25w700 => TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: ThemeLesson3.colorScheme.onPrimary,
      );
}
