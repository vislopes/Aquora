import 'package:flutter/material.dart';

import 'dashboard_page.dart';
import 'dados_fazenda_page.dart';
import 'alertas_page.dart';
import 'previsao_tempo_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final List<Widget> _pages = const [
    DashboardPage(),
    DadosFazendaPage(),
    AlertasPage(),
    PrevisaoTempoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: const Color(0xFF004B83),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.terrain),
            label: 'Fazenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_amber),
            label: 'Alertas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Tempo',
          ),
        ],
      ),
    );
  }
}