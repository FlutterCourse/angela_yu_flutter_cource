import 'package:angela_yu_flutter_cource/export.dart';

class Lesson1 extends StatefulWidget {
  static const id = 'Lesson1';
  const Lesson1({Key? key}) : super(key: key);

  @override
  _Lesson1State createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  int donuts = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
            'Number of donuts eaten today $donuts'), //number of donuts eaten today
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          if (donuts >= 10) {
            donuts++;
            donuts = 0;
          }
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
