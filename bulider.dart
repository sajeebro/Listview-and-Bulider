import 'package:flutter/material.dart';
import 'package:listviwe/tile.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  var items = List.generate(20, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list view builder'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) => MyTile(text: items[index]))),
    );
  }
}
