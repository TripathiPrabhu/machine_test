import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: Colors.teal),
      //unselectedItemColor: Colors.teal,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home,  color: Colors.black54,),
    label: 'Home',

        backgroundColor: Colors.white
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.people_outline, color: Colors.black54,),
        label: 'Connections',
        backgroundColor: Colors.white
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.event_note,color: Colors.black54,),
      label: 'My Card',
      backgroundColor: Colors.white,
    ),
      BottomNavigationBarItem(

        icon: Icon(Icons.outbox,color: Colors.black54,),
        label: 'Event',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(

        icon: Icon(Icons.inbox_outlined,color: Colors.black54,),
        label: 'Business',
        backgroundColor: Colors.white,
      ),
    ],
    type: BottomNavigationBarType.shifting,
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.teal,
    selectedIconTheme: IconThemeData(color: Colors.teal),
    iconSize: 30,
    onTap: _onItemTapped,
    elevation: 10

    );
  }
}
