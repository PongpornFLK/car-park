import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container()
          ],
        ),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Home"),
            Divider(height: 50,)
          ],
        ),
        ),
      ),
    );
  }
}
