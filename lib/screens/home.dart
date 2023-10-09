import 'package:flutter/material.dart';
import 'package:taskbeta/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tbBGColor,
        title: const Row(
          children: [
            Icon(
              Icons.menu,
              color: tbBlack,
              size: 30,
            )
          ],
        ),
      ),
      body: Container(child: const Text("This is the home screen")),
    );
  }
}
