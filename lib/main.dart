import 'package:app_expansion_animation_implicit/custom_tile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expansion Animation Implicit',
      home: ExpansionAnimationList(),
    );
  }
}

class ExpansionAnimationList extends StatefulWidget {
  const ExpansionAnimationList({Key? key}) : super(key: key);

  @override
  State<ExpansionAnimationList> createState() => _ExpansionAnimationListState();
}

class _ExpansionAnimationListState extends State<ExpansionAnimationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Animation List'),
        centerTitle: true,
      ),
      body: ListView(
        children: List.generate(
          16,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 4.0,
            ),
            child: MyCustomTile(text: 'My Expansion Tile $index'),
          ),
        ),
      ),
    );
  }
}
