import 'package:cpr_application/history.dart';
import 'package:cpr_application/reserv.dart';
import 'package:cpr_application/setting.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Homeee",
      style: optionStyle,
    ),
    const Reserv(),
    const History(),
    const Setting(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            const Color(0xFF03174C), // เปลี่ยนสีพื้นหลังของ BottomNavigationBar
        selectedItemColor: Colors.white, // เปลี่ยนสีไอคอนที่เลือก
        unselectedItemColor: Colors.grey[400], // เปลี่ยนสีไอคอนที่ไม่ได้เลือก
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Reservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
  
        onTap: _onItemTapped,
      ),
      // body: Center(
      //   child: Padding(padding: EdgeInsets.all(15),
      //   child: Column(
      //     children: [
      //       Text("PARKING ZONE"),
      //       Divider(height: 50,)
      //     ],
      //   ),
      //   ),
      // ),
    );
  }
}
