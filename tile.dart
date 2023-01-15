import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String text;

  const MyTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
          child: ListTile(
            leading: const Icon(Icons.bus_alert),
            title: Text(
              text,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        const Divider(
          thickness: 2.0,
          color: Colors.amber,
        )
      ],
    );
  }
}
