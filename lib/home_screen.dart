import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        leadingWidth: 80,
        backgroundColor: Colors.transparent,
        leading: const Image(
          image: AssetImage('assets/Peperomia Obtusfolia.png'),
        ),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 15),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icon/76-notification.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icon/44-setting.svg'),
          ),
        ],
        flexibleSpace: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey Urvashi',
                style: TextStyle(
                  fontSize: 14,
                  color: ColorManager.lightGreen200,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Column(),
    );
  }
}
