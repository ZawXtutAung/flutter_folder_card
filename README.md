# flutter_folder_card

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# flutter_folder_card
# Your Home Dart class
```dart
 SimpleFoldingCell.create(
     frontWidget: WidgetName=first(index),//First Widget
     innerWidget:WidgetName= second(index),//Second Widget
 )
//Todo First Widget
 Widget first(int index) {
return Builder(builder: ((xcontext) {
     return Container()
}))
 }

 //Todo second Widget
 Widget second(int index) {
return Builder(builder: ((xcontext) {
     return Container()
}))
 }
```
#Pubspec.yaml
```yaml
dependencies:
 folding_cell: ^1.0.2
```