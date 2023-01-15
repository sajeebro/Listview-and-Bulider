import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:listviwe/bulider.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'list view',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const ListViewBuilder(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List view"),
        ),
        body: ListView(
          // this type list view we can use for small list, in long list that going to be memory efficence
          children: [
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("data"),
              subtitle: const Text('sub'),
              trailing: const Icon(Icons.car_crash),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("data"),
              subtitle: const Text('sub'),
              trailing: const Icon(Icons.car_crash),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("data"),
              subtitle: const Text('sub'),
              trailing: const Icon(Icons.car_crash),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("data"),
              subtitle: const Text('sub'),
              trailing: const Icon(Icons.car_crash),
              onTap: () {},
              onLongPress: () {},
            ),
          ],
        ));
  }
}
