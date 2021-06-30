import 'package:angela_yu_flutter_cource/export.dart';

class Lesson15 extends StatelessWidget {
  static const id = 'lesson 1.5';
  const Lesson15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: const Center(
                          child: Text(
                        'r1',
                        style: TextStyle(fontSize: 45),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                      child: const Center(
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'T',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/13/Mont-grange-sunset.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
