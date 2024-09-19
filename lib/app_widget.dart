import 'package:flutter/material.dart';
import 'package:godisha_assignment_1/home_page.dart';

/// The root widget of the application.
///
/// This widget initializes the Flutter app with a `MaterialApp` and sets up
/// the home page and theme settings for the entire application.
class MyApp extends StatelessWidget {
  /// Creates a [MyApp] widget.
  ///
  /// The [key] can be passed to identify this widget in the widget tree.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery', // The title of the application.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Use Material 3 design principles.
      ),
      // The home page of the application.
      home: const MyHomePage(title: 'Godisha Gallery'),
    );
  }
}
