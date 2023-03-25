# isar_adding_attribute_issue

This Flutter project is a fairly minimal project demonstrating an issue with adding attributes to existing embedded objects.

When adding a new attribute to an embedded object model, it will break the app if it's not alphabetically last among attributes (offsets)

This is tested on Linux. Running on other platforms (Windows, macOs, Android, iOS) possibly needs more configuration. Web isn't included as the latest Isar version doesn't support it.

## Getting Started

1. Run the app as it is. It will create two new ExampleModel objects and write them to the Isar db. Running multiple times won't add more data.
2. Close the app.
3. Uncomment two block comments containing attribute aString in the model_example.dart
4. Run command flutter pub run build_runner build
5. Run the app again.
6. It will display an error. In my production app it threw an "Index out of error" exception. Here it throws another. Also, trying to open Isar Inspector won't do any good, it will just freeze with empty ExampleModel table (which is populated since #1 step).
7. Close the app.
8. Comment again declaration of aString attribute and its init in the constructor in the model_example.dart
9. Uncomment two block comments containing attribute zString in the model_example.dart
10. Run command flutter pub run build_runner build
11. Run the app again.
12. It will work fine and in the Isar Inspector it will correctly display new zString attribute with null value in both records;