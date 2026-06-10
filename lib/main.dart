import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const AquoraApp());
}

class AquoraApp extends StatelessWidget {
  const AquoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aquora',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}