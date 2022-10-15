import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:woop/pages/accounts.dart';
import 'package:woop/pages/coop.dart';
import 'package:woop/pages/credit_cards.dart';
import 'package:woop/pages/invest.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Accounts(),
    CreditCards(),
    Invest(),
    Coop(),
  ];

  void _onTap(index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.cashRegister),
            label: 'Contas',
          ),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.creditCard), label: 'Cartões'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.gem), label: 'Investimento'),
          BottomNavigationBarItem(icon: Icon(LineIcons.users), label: 'Coop'),
        ],
      ),
    );
  }
}
