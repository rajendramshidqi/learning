import 'package:flutter/material.dart';
import 'package:learning/main_layouts.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.amber[100],
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: FlutterLogo(),
            ),
            Container(
              color: Colors.amber[100],
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: FlutterLogo(),
            ),
            Container(
              color: Colors.amber[100],
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
