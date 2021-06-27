import 'package:angela_yu_flutter_cource/lessons/scratch/scratch.dart';
import 'package:flutter/material.dart';

int main() {
  runApp(const Main());
  return 0;
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Scratch.id: (context) => const Scratch(),
      },
      initialRoute: Scratch.id,
    );
  }
}
