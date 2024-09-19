import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:godisha_assignment_1/fullscreen_image.dart';

/// A stateful widget that represents the home page of the application.
///
/// This widget displays a grid of images using a staggered grid view, where each image
/// can be tapped to view a fullscreen version of it in a new screen.
class MyHomePage extends StatefulWidget {
  /// The title of the page displayed in the app bar.
  final String title;

  /// Creates a [MyHomePage] widget.
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// The state class for the [MyHomePage] widget.
///
/// This state manages a list of image paths that are displayed in a staggered grid layout.
/// When an image is tapped, it navigates to a fullscreen view of that image.
class _MyHomePageState extends State<MyHomePage> {
  /// A list of local asset image paths to be displayed in the grid.
  final List<String> images = [
    'assets/images/02.jpeg',
    // 'assets/images/03.jpeg',
    // 'assets/images/04.jpeg',
    'assets/images/05.jpeg',
    // 'assets/images/06.jpeg',
    'assets/images/07.jpeg',
    'assets/images/08.jpeg',
    // 'assets/images/09.jpeg',
    // 'assets/images/10.jpeg',
    'assets/images/11.jpeg',
    'assets/images/12.jpeg',
    'assets/images/13.jpeg',
    'assets/images/14.jpeg',
    'assets/images/15.jpeg',
    // 'assets/images/16.jpeg',
    // 'assets/images/17.jpeg',
    'assets/images/18.jpeg',
    'assets/images/19.jpeg',
    'assets/images/20.jpeg',
    'assets/images/21.jpeg',
    'assets/images/22.jpeg',
    'assets/images/23.jpeg',
    'assets/images/24.jpeg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid.
          ),
          itemCount: images.length, // Total number of images in the grid.
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to a new screen to display the full image.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FullImageScreen(imagePath: images[index]),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}