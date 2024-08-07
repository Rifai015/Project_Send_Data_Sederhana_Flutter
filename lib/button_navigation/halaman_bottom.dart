import 'package:flutter/material.dart';
import 'package:send_data/button_navigation/account_screen.dart';
import 'package:send_data/button_navigation/home_screen.dart';
import 'package:send_data/button_navigation/search_screen.dart';
import 'package:send_data/models/user_models.dart';

class HalamanBottom extends StatefulWidget {
  final UserModels user;
  const HalamanBottom({
    super.key,
    required this.user,
  });

  @override
  State<HalamanBottom> createState() => _HalamanBottomState();
}

class _HalamanBottomState extends State<HalamanBottom> {
  late final listBottom = [
    HomeScreen(
      user: widget.user,
    ),
    const SearchScreen(),
    const AccountScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listBottom[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 8,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
