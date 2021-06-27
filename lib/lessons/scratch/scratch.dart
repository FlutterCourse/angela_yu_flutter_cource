import 'package:flutter/material.dart';

class Scratch extends StatelessWidget {
  static const id = 'scratchid';
  const Scratch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Scratch')),
    );
  }
}
