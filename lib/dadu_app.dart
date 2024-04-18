import 'package:dadu/dadu_page.dart';
import 'package:flutter/material.dart';

class DaduApp extends StatelessWidget {
  const DaduApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dadu',
      home: const DaduPage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
