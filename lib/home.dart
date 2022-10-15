import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:woop/styles/colours.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(color: primary),
    Container(color: secondary),
    Container(color: ternary),
    Container(color: principal),
    Container(color: principal),
  ];

  void _onTap(index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        curve: Curves.easeIn,
        selectedItemColor: secondary,
        unselectedItemColor: Colors.white38,
        duration: const Duration(milliseconds: 350),
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          SalomonBottomBarItem(
              activeIcon: const Icon(LineIcons.heartAlt),
              icon: const Icon(LineIcons.heart),
              title: const Text("Campanhas"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white38),
          SalomonBottomBarItem(
              activeIcon: const Icon(LineIcons.trophy),
              icon: const Icon(LineIcons.trophy),
              title: const Text("Recompensa"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white38),
          SalomonBottomBarItem(
              activeIcon: const Icon(LineIcons.mapMarker),
              icon: const Icon(LineIcons.map),
              title: const Text("Mapa"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white38),
          SalomonBottomBarItem(
              activeIcon: const Icon(LineIcons.infoCircle),
              icon: const Icon(LineIcons.info),
              title: const Text("Infos"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white38),
          SalomonBottomBarItem(
              activeIcon: const Icon(LineIcons.userCircle),
              icon: const Icon(LineIcons.user),
              title: const Text("Perfil"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white38),
        ],
      ),
    );
  }
}
