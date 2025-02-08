import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/LogoCARPAKING.png",
              height: 60,
              width: 120,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Pongporn"),
            Divider(height: 50,)
          ],
        ),
        ),
      ),
    );
  }
}
