import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_adding_attribute_issue/model_example.dart';
import './model_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Isar? isar;

  @override
  void initState() {
    super.initState();
    Isar.open([ExampleModelSchema]).then((value) async {
      isar = value;
      final existingModels = await isar!.exampleModels.where().findAll();
      if(existingModels.isEmpty) {
        await isar!.writeTxn(() async { await isar!.exampleModels.putAll([const ExampleModel(embeddedModel: EmbeddedModel(a: 0, b: 1, c: 2)), ExampleModel(embeddedModel: EmbeddedModel(a: 3, b: 4, c: 5))]); });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(widget.title),
    ));
  }

  @override
  void dispose() {
    if(isar != null) isar!.close();
    super.dispose();
  }
}
