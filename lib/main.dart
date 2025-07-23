import 'package:flutter/material.dart';
import 'package:learning/container/satu.dart';
import 'package:learning/container/dua.dart';
import 'package:learning/container/tiga.dart';
import 'package:learning/row.colum.dart/row1.dart';
import 'package:learning/row.colum.dart/colum1.dart';
import 'package:learning/row.colum.dart/latihan1.dart';
import 'package:learning/list_view/contoh1.dart';
import 'package:learning/list_view/contoh2.dart';
import 'package:learning/list_view/contoh3.dart';
import 'package:learning/list_view/contoh4.dart';
import 'package:learning/list_view/wisata.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WisataScreen());
  }
}

class HelloGanteng extends StatelessWidget {
  const HelloGanteng({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello ganteng',
        style: TextStyle(
          color: const Color.fromARGB(255, 101, 173, 255),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
