import 'package:flutter/material.dart';

class Dadu extends StatelessWidget {
  const Dadu({
    super.key,
    required this.nomorDadu,
  });

  final int nomorDadu;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('images/dice$nomorDadu.png'),
    );
  }
}
