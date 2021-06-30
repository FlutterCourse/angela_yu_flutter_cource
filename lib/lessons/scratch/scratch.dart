import 'package:angela_yu_flutter_cource/export.dart';

class Scratch extends StatelessWidget {
  static const id = 'scratchid';
  const Scratch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scratch'),
      ),
      body: const Center(
        child: Text('Scratch'),
      ),
    );
  }
}
