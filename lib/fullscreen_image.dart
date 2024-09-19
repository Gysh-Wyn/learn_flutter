import 'package:flutter/material.dart';

/// A stateless widget that displays a full-screen image.
///
/// The image path is passed to this widget, and it covers the entire screen.
/// A floating back button allows the user to navigate back to the previous screen.
class FullImageScreen extends StatelessWidget {
  /// The path of the image to be displayed.
  final String imagePath;

  /// Creates a [FullImageScreen] widget.
  ///
  /// The [imagePath] must be provided and cannot be null.
  const FullImageScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen image
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),
          // Floating back button
          Positioned(
            top: 40.0, // Position of the back button
            left: 16.0,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.black.withOpacity(0.5),
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
