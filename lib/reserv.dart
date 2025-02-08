import 'package:flutter/material.dart';

class Reserv extends StatefulWidget {
  const Reserv({super.key});

  @override
  State<Reserv> createState() => _ReservState();
}

class _ReservState extends State<Reserv> {
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
