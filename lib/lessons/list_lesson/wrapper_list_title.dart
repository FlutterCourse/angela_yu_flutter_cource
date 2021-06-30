import 'package:angela_yu_flutter_cource/export.dart';

class WrapperListTitle extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const WrapperListTitle({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal.shade100,
      child: ListTile(
        leading: const Icon(Icons.ac_unit_sharp),
        title: Text(title),
        onTap: () {
          onTap();
        },
      ),
    );
  }
}
