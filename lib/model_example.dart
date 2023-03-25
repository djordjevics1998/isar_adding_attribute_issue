import 'package:isar/isar.dart';

part 'model_example.g.dart';

@collection
class ExampleModel {
  final Id id;
  final EmbeddedModel embeddedModel;

  const ExampleModel({this.id = Isar.autoIncrement, required this.embeddedModel});
}

@embedded
class EmbeddedModel {
  final int a, b, c;
  //final String? aString; // uncommenting this attribute won't work and i suspect it's because of the alphabetical order
  //final String? dString; // uncommenting this attribute will work

  const EmbeddedModel({this.a = 0/*, this.aString*//*, this.dString*/, this.b = 0, this.c = 0});
}