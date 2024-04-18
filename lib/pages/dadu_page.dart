import 'dart:math';

import 'package:flutter/material.dart';

import 'package:dadu/widgets/dadu.dart';

class DaduPage extends StatefulWidget {
  const DaduPage({
    super.key,
  });

  @override
  State<DaduPage> createState() => _DaduPageState();
}

class _DaduPageState extends State<DaduPage> {
  int nomorDaduKiri = 1;
  int nomorDaduKanan = 1;
  int jumlahNilai = 0;

  @override
  void initState() {
    super.initState();
    jumlahNilai = nomorDaduKiri + nomorDaduKanan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dadu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text('Nilai yang keluar'),
            Text(
              '$jumlahNilai',
              style: const TextStyle(
                fontSize: 64.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Dadu(nomorDadu: nomorDaduKiri),
                const SizedBox(width: 8.0),
                Dadu(nomorDadu: nomorDaduKanan)
              ],
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {
                setState(() {
                  nomorDaduKiri = Random().nextInt(6) + 1;
                  nomorDaduKanan = Random().nextInt(6) + 1;
                  jumlahNilai = nomorDaduKiri + nomorDaduKanan;
                });
              },
              child: const Text('Acak Dadu'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
