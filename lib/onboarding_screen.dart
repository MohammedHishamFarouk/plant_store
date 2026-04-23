import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'wave_clipper.dart';

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
              height: MediaQuery.of(context).size.height * 0.7,
              image: const AssetImage('assets/splash.png'),
              fit: BoxFit.cover,
            ),
          ),
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
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
