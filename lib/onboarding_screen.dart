import 'package:flutter/material.dart';

import 'color_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkGreen,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              image: const AssetImage('assets/splash.png'),
              fit: BoxFit.cover,
            ),
          ),
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: ColorManager.darkGreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(68.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Plant a tree and help us to \ncure our planet'),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(180, 60),
                    backgroundColor: ColorManager.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Plant a tree',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 20); // Start a bit down from the top left

    // Create the "S" curve
    var firstStart = Offset(size.width * 0.2, 0);
    var firstEnd = Offset(size.width * 0.5, 30);
    path.quadraticBezierTo(
      firstStart.dx,
      firstStart.dy,
      firstEnd.dx,
      firstEnd.dy,
    );

    var secondStart = Offset(size.width * 0.8, 60);
    var secondEnd = Offset(size.width, 20);
    path.quadraticBezierTo(
      secondStart.dx,
      secondStart.dy,
      secondEnd.dx,
      secondEnd.dy,
    );

    path.lineTo(size.width, size.height); // Move to bottom right
    path.lineTo(0, size.height); // Move to bottom left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
