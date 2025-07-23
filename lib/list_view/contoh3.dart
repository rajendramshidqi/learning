import 'package:flutter/material.dart';
import 'package:learning/main_layouts.dart';

class ListViewTiga extends StatelessWidget {
  ListViewTiga({super.key});

  final List<Color> colorList = [Colors.red, Colors.green, Colors.blue];
  final List<String> partaList = [
    'partai banteng',
    'partai kabah',
    'partai joget',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              width: 200,
              height: 300,
              color: colorList[index],
              child: Text(
                partaList[index],
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
