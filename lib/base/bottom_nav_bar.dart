import 'package:flutter/material.dart';
import 'package:theticketapp/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child:  Text("Tickets")),
    const Center(child:  Text("Profile"))
  ];

  //change our index for bottom navbar

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
         _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text("My Tickets")
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.grey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Tickets"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person")

      ]),
      );
    

  }
}