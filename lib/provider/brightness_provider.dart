import 'package:angela_yu_flutter_cource/export.dart';
import 'package:angela_yu_flutter_cource/themes/theme_leeson_3.dart';

class BrightnessProvider extends ChangeNotifier {
  Brightness get brightness => ThemeLesson3.brightness;
  ColorScheme colorScheme() => ThemeLesson3.colorScheme;
  void onChangeBrightness() {
    if (ThemeLesson3.brightness == Brightness.light) {
      ThemeLesson3.brightness = Brightness.dark;
      print('dark');
    } else {
      ThemeLesson3.brightness = Brightness.light;
      print('light');
    }
    notifyListeners();
  }
}
