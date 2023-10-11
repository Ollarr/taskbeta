import 'package:flutter/material.dart';
import 'package:taskbeta/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tbBGColor,
        title: Row(
          children: [
            const Icon(
              Icons.menu,
              color: tbBlack,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: Image.asset("assets/images/profile-pic.jpeg"),
            )
          ],
        ),
      ),
      body: Container(child: const Text("This is the home screen")),
    );
  }
}
