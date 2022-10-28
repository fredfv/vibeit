import 'package:flutter/material.dart';
import 'package:vibeit/src/model/color_outlet.dart';
import 'package:vibeit/src/view/widgets/botton_navigation_item.dart';
import 'package:vibeit/src/view/widgets/card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: CardItem(
          label: 'label',
          icon: Icons.home,
          selected: true,
          onTap: () {},
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(color: ColorOutlet.primary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottonNavigationItem(
              label: 'Home',
              icon: Icons.home,
              selected: _selectedIndex == 0,
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            BottonNavigationItem(
              label: 'Search',
              icon: Icons.search,
              selected: _selectedIndex == 1,
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            BottonNavigationItem(
              label: 'Profile',
              icon: Icons.person,
              selected: _selectedIndex == 2,
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
